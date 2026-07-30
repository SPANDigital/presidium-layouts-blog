# Partials catalog — `presidium-layouts-blog`

> Auto-generated reference of every Hugo partial and `define` block in this theme. Think of it as the "class definitions" for the templates: name, inferred signature (the `dict` keys passed at call sites), whether it returns a value, and who calls it. **Check here before writing a new partial** to avoid duplicating existing functionality.

- **26** partials defined · **8** `define` blocks · **9** partials used but inherited from a base theme

Regenerate with `python3 gen_catalog.py`.

## Index

- **archive/** — [`archive/list`](#archivelist), [`archive/table`](#archivetable)
- **article/** — [`article/author`](#articleauthor), [`article/card`](#articlecard), [`article/date`](#articledate), [`article/footer`](#articlefooter), [`article/frontmatter`](#articlefrontmatter), [`article/header`](#articleheader), [`article/hero`](#articlehero), [`article/tags`](#articletags), [`article/title`](#articletitle)
- **common/** — [`common/breadcrumbs`](#commonbreadcrumbs), [`common/date`](#commondate), [`common/presentation`](#commonpresentation), [`common/reading-time`](#commonreading-time), [`common/thumbnail`](#commonthumbnail)
- **home/** — [`home/featured`](#homefeatured), [`home/hero`](#homehero)
- **navigation/** — [`navigation/archive-nav`](#navigationarchive-nav), [`navigation/archive-nav-item`](#navigationarchive-nav-item), [`navigation/date`](#navigationdate), [`navigation/menu-title`](#navigationmenu-title), [`navigation/nav-item`](#navigationnav-item), [`navigation/root`](#navigationroot)
- **page/** — [`page/header`](#pageheader)
- **type/** — [`type/typeclass`](#typetypeclass)

## Partials

### archive/

<a id="archivelist"></a>
#### `archive/list`
`{{ partial "archive/list" . }}` · `layouts/partials/archive/list.html`  
**Params:** plain context (`.`)  
**Called by:** `layouts/archive/list.html:7`  

<a id="archivetable"></a>
#### `archive/table`
`{{ partial "archive/table" . }}` · `layouts/partials/archive/table.html`  
**Params (dict):** `NavPage`, `Pages`  
**Called by:** `layouts/partials/common/archive.html:10`  

### article/

<a id="articleauthor"></a>
#### `article/author`
`{{ partial "article/author" . }}` · `layouts/partials/article/author.html`  
**Params:** plain context (`.`)  
**Called by:** `layouts/partials/article/frontmatter.html:25`, `layouts/partials/article/card.html:10`, `layouts/partials/article/frontmatter.html:27`, `layouts/partials/home/hero.html:10`  

<a id="articlecard"></a>
#### `article/card`
`{{ partial "article/card" . }}` · `layouts/partials/article/card.html`  
**Params:** plain context (`.`)  
**Called by:** `layouts/partials/home/featured.html:3`  

<a id="articledate"></a>
#### `article/date`
`{{ partial "article/date" . }}` · `layouts/partials/article/date.html`  
**Params:** plain context (`.`)  
**Called by:** `layouts/partials/article/card.html:11`, `layouts/partials/article/frontmatter.html:28`, `layouts/partials/home/hero.html:11`  

<a id="articlefooter"></a>
#### `article/footer`
`{{ partial "article/footer" . }}` · `layouts/partials/article/footer.html`  
**Params:** plain context (`.`)  
**Called by:** `layouts/partials/article/item.html:61`  

<a id="articlefrontmatter"></a>
#### `article/frontmatter`
`{{ partial "article/frontmatter" . }}` · `layouts/partials/article/frontmatter.html`  
**Params:** plain context (`.`)  
**Called by:** `layouts/partials/article/item.html:59`, `layouts/partials/page/list.html:30`  

<a id="articleheader"></a>
#### `article/header`
`{{ partial "article/header" . }}` · `layouts/partials/article/header.html`  
**Params:** plain context (`.`)  
**Called by:** `layouts/partials/article/item.html:57`  

<a id="articlehero"></a>
#### `article/hero`
`{{ partial "article/hero" . }}` · `layouts/partials/article/hero.html`  
**Params:** plain context (`.`)  
**Called by:** _no internal call sites found (entry point or external)_  

<a id="articletags"></a>
#### `article/tags`
`{{ partial "article/tags" . }}` · `layouts/partials/article/tags.html`  
**Params:** plain context (`.`)  
**Called by:** `layouts/partials/article/card.html:8`, `layouts/partials/article/frontmatter.html:29`, `layouts/partials/home/hero.html:8`  

<a id="articletitle"></a>
#### `article/title`
`{{ partial "article/title" . }}` · `layouts/partials/article/title.html`  
**Params:** plain context (`.`)  
**Called by:** `layouts/partials/article/item.html:58`  

### common/

<a id="commonbreadcrumbs"></a>
#### `common/breadcrumbs`
`{{ partial "common/breadcrumbs" . }}` · `layouts/partials/common/breadcrumbs.html`  
**Params:** plain context (`.`)  
**Called by:** _no internal call sites found (entry point or external)_  

<a id="commondate"></a>
#### `common/date` — _returns a value_
`{{ partial "common/date" . }}` · `layouts/partials/common/date.html`  
**Params:** plain context (`.`)  
**Called by:** `layouts/partials/article/date.html:1`, `layouts/partials/navigation/date.html:1`  

<a id="commonpresentation"></a>
#### `common/presentation` — _returns a value_
`{{ partial "common/presentation" . }}` · `layouts/partials/common/presentation.html`  
check if article presentation has been set  
**Params:** plain context (`.`)  
**Called by:** `layouts/partials/article/frontmatter.html:1`  

<a id="commonreading-time"></a>
#### `common/reading-time`
`{{ partial "common/reading-time" . }}` · `layouts/partials/common/reading-time.html`  
**Params:** plain context (`.`)  
**Called by:** _no internal call sites found (entry point or external)_  

<a id="commonthumbnail"></a>
#### `common/thumbnail`
`{{ partial "common/thumbnail" . }}` · `layouts/partials/common/thumbnail.html`  
default frontmatter resource identifier  
**Params:** plain context (`.`)  
**Called by:** `layouts/partials/article/card.html:3`, `layouts/partials/article/frontmatter.html:13`, `layouts/partials/article/hero.html:5`, `layouts/partials/home/hero.html:4`  

### home/

<a id="homefeatured"></a>
#### `home/featured`
`{{ partial "home/featured" . }}` · `layouts/partials/home/featured.html`  
**Params:** plain context (`.`)  
**Called by:** `layouts/index.html:25`  

<a id="homehero"></a>
#### `home/hero`
`{{ partial "home/hero" . }}` · `layouts/partials/home/hero.html`  
**Params:** plain context (`.`)  
**Called by:** `layouts/index.html:22`  

### navigation/

<a id="navigationarchive-nav"></a>
#### `navigation/archive-nav`
`{{ partial "navigation/archive-nav" . }}` · `layouts/partials/navigation/archive-nav.html`  
**Params:** plain context (`.`)  
**Called by:** `layouts/partials/navigation/root.html:40`  

<a id="navigationarchive-nav-item"></a>
#### `navigation/archive-nav-item`
`{{ partial "navigation/archive-nav-item" . }}` · `layouts/partials/navigation/archive-nav-item.html`  
**Params:** plain context (`.`)  
**Called by:** `layouts/partials/navigation/archive-nav.html:37`  

<a id="navigationdate"></a>
#### `navigation/date`
`{{ partial "navigation/date" . }}` · `layouts/partials/navigation/date.html`  
**Params:** plain context (`.`)  
**Called by:** `layouts/partials/navigation/menu-title.html:2`  

<a id="navigationmenu-title"></a>
#### `navigation/menu-title`
`{{ partial "navigation/menu-title" . }}` · `layouts/partials/navigation/menu-title.html`  
**Params:** plain context (`.`)  
**Called by:** `layouts/partials/navigation/nav-item.html:60`, `layouts/partials/navigation/nav-item.html:57`  

<a id="navigationnav-item"></a>
#### `navigation/nav-item`
`{{ partial "navigation/nav-item" . }}` · `layouts/partials/navigation/nav-item.html`  
**Params (dict):** `Collapsed`, `CurrentPage`, `Expanded`, `Index`, `Level`, `MenuName`, `NavPage`, `RootUrl`, `Show`, `UseSectionViewUrlFormat`  
**Called by:** `layouts/partials/navigation/nav-item.html:76`, `layouts/partials/navigation/nav-item.html:80`, `layouts/partials/navigation/root.html:24`, `layouts/partials/navigation/nav-item.html:69`, `layouts/partials/navigation/nav-item.html:76`, `layouts/partials/navigation/root.html:42`  

<a id="navigationroot"></a>
#### `navigation/root`
`{{ partial "navigation/root" . }}` · `layouts/partials/navigation/root.html`  
**Params:** plain context (`.`)  
**Called by:** `layouts/_default/baseof.html:93`  

### page/

<a id="pageheader"></a>
#### `page/header`
`{{ partial "page/header" . }}` · `layouts/partials/page/header.html`  
specific page header - always hidden since frontmatter shows the title  
**Params:** plain context (`.`)  
**Called by:** `layouts/_default/list.embed.html:19`, `layouts/_default/list.html:38`, `layouts/_default/single.embed.html:19`, `layouts/_default/single.html:11`, `layouts/archive/list.html:3`  

### type/

<a id="typetypeclass"></a>
#### `type/typeclass`
`{{ partial "type/typeclass" . }}` · `layouts/partials/type/typeclass.html`  
**Params:** plain context (`.`)  
**Called by:** `layouts/_default/baseof.html:85`  

## `define` blocks (named template regions)

| Block | Defined in |
|---|---|
| `content` | `layouts/_default/single.html` |
| `content` | `layouts/archive/list.html` |
| `content` | `layouts/index.html` |
| `footer` | `layouts/_default/single.html` |
| `footer` | `layouts/archive/list.html` |
| `header` | `layouts/_default/single.html` |
| `header` | `layouts/archive/list.html` |
| `metadata` | `layouts/_default/single.html` |

## Used but inherited (defined in a base theme, not here)

These partial names are called in this theme but have no definition in this repo — they resolve to the base theme (e.g. `presidium-layouts-base`). Look there for their definitions.

- `article/root`
- `common/archive`
- `common/copylink`
- `common/dummy`
- `common/pages`
- `common/slug`
- `navigation/nav-item-external`
- `page/footer`
- `url/permalink`
