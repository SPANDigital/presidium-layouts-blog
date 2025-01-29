# presidium-layouts-blog

TLDR: A blog layout theme for Presidium sites.

### Overview 
This repo makes up the `blog layouts` portion of the Presidium System Level Theme, and extends the officially supported theme features in [presidium-layouts-base](https://github.com/spandigital/presidium-layouts-base).
For more info on Hugo Themes see the official Hugo documentation [here](https://gohugo.io/hugo-modules/theme-components/) 

## Getting Started

### Method 1 - Just using the Presidium Themes in your Hugo site (Default)
Update the `config.yml`:
```
module:
  imports:
  - path: github.com/spandigital/presidium-styling-base
  - path: github.com/spandigital/presidium-layouts-blog
```

### Method 2 - Working on contributing to this repo in local development.
1. Clone the theme
1. Clone the [presidium-test-validation](https://github.com/SPANDigital/presidium-test-validation) repo. We use the `presidium-test-validation` repo as the styling and functionality test bed, where we throw all the officially supported features in with the kitchen sink, so that we can validate every theme change has no unintended effects.
1. Open the `go.mod` file in your `presidium-test-validation` clone.
1. Add the following to the bottom of your `go.mod` file, and update the path after the arrow to the correct path where you cloned the theme layout:
```
replace github.com/spandigital/presidium-layouts-blog => /{path-on-your-machine}/presidium-layouts-base
```

4. Run a refresh and then build the docset with Hugo:
```
make refresh
```
If you don't have the Makefile in your docset, then you can copy it from [here](https://github.com/SPANDigital/presidium/blob/develop/templates/default/Makefile)
Then run
```
make serve
```
Your served site should be available on `localhost:1313`.

---

## Conventional Commits

At SPAN we use [Conventional Commits 1.0.0](https://www.conventionalcommits.org/en/v1.0.0/) to make our commit messages more useful.

## Semantic Releases

This repository uses [Semantic Release](https://semantic-release.gitbook.io/semantic-release/) tool to automate version management and package publishing.

Upon merging into to the main or develop branch, Semantic Release tool will:
- Calculate the new release version based on the commits
- Create a git commit and a git tag for the release
- Create a Release with release notes from the commit messages
- Create and publish the container images

---

## Branching

Please see this [Presidium Git Strategy Miro board](https://miro.com/app/board/uXjVPK0XxiU=/).

In summary:
- `main` ⇾ production
  - Only hotfixes or `develop` get merged into `main`
- `develop`
  - Feature branches and bug fixes are branched from and merged into `develop`
- `feat/<TITLE>`
  - If there is a feature in development it will be on a feature branch

---