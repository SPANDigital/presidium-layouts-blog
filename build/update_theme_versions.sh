#!/bin/bash

set -euo pipefail

gh auth status

echo "::notice ::🔧 Processing repository: $GITHUB_REPOSITORY"

BRANCHES="main develop test-env"

for BRANCH in $BRANCHES; do
  echo "::notice ::🔧 Checking branch: $BRANCH"
  
  if ! git ls-remote --exit-code --heads origin "$BRANCH"; then
    echo "::notice ::🔧 Branch $BRANCH does not exist. Skipping..."
    continue
  fi

  git checkout "$BRANCH"
  git pull origin "$BRANCH"

  PR_BRANCH_NAME="auto-update-theme-versions-$BRANCH"
  echo "::notice ::🔧 Preparing PR branch: $PR_BRANCH_NAME"

  if git ls-remote --exit-code --heads origin "$PR_BRANCH_NAME"; then
    echo "::notice ::🔧 PR branch already exists."
    git checkout "$PR_BRANCH_NAME"
    git pull origin "$PR_BRANCH_NAME"

    # Merge latest base branch into the PR branch (only if needed)
    if ! git merge-base --is-ancestor "$BRANCH" HEAD; then
      echo "::notice ::🔧 Merging latest $BRANCH into $PR_BRANCH_NAME..."
      git merge "$BRANCH"
    else
      echo "::notice ::🔧 $PR_BRANCH_NAME is already up to date with $BRANCH."
    fi
  else
    git checkout -b "$PR_BRANCH_NAME"
  fi

  echo "::notice ::🔧 Running make refresh..."
  make refresh

  git add go.mod

  if ! git check-ignore -q go.sum && [ -f go.sum ]; then
    git add go.sum
  else
    echo "::notice ::⚠️ Skipping go.sum — it’s ignored or missing"
  fi

  if git diff --cached --quiet; then
    echo "::notice ::✅ No new theme versions detected for $BRANCH."
    continue
  else
    echo "::notice ::🔧 New version detected, preparing commit..."
    git commit -m "chore: auto-update theme versions [GitHub Actions]"
    git push origin "$PR_BRANCH_NAME"
  fi

  PR_EXISTS=$(gh pr list --base "$BRANCH" --head "$PR_BRANCH_NAME" --state open --json number --jq '.[0].number' 2>/dev/null || true)

  if [ -n "$PR_EXISTS" ]; then
    echo "::notice ::✅ PR already exists: https://github.com/$GITHUB_REPOSITORY/pull/$PR_EXISTS"
  else
    echo "::notice ::🔧 Creating PR..."
    if gh pr create \
      --base "$BRANCH" \
      --head "$PR_BRANCH_NAME" \
      --title "chore: Auto-update theme versions on $BRANCH" \
      --body "Automated theme version updates via GitHub Actions."; then
      echo "::notice ::✅ Theme versions updated successfully for $BRANCH. PR created."
    else
      echo "::error ::❌ PR creation failed."
      exit 1
    fi
  fi

done
