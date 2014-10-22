<h1 align='center'>Jumblr</h1>

<p align="center">
  <a title='NPM version' href="http://badge.fury.io/js/jumblr">
    <img src='http://img.shields.io/npm/v/jumblr.svg?style=flat' />
  </a>
  <a title='Build Status' href="https://travis-ci.org/hhsnopek/jumblr">
    <img src='http://img.shields.io/travis/hhsnopek/jumblr.svg?style=flat' />
  </a>
  <a title='devDependency Status' href="https://gemnasium.com/hhsnopek/jumblr">
    <img src='http://img.shields.io/gemnasium/hhsnopek/jumblr.svg?style=flat' />
  </a>
</p>

Jade Tubmlr Mixins


## Installation
- npm: `npm i jumblr`
- tarball: see [latest releases](https://github.com/hhsnopek/jumblr/releases)

## Usage
include the `jumblr.jade` at the top of your main jade file:
```jade
include node_modules/jumblr/lib/jumblr
```

## Mixins

`+jumblr(type)` - Standard tumblr block
```jade
+jumblr('Video')
  li(class="post video")
    {Video-500}
    +jumblr('Caption')
      div(class="caption") {Caption}

//- output
{block:Video}
<li class="post video">{Video-500}{block:Caption}
  <div class="caption">{Caption}</div>{/block:Caption}
</li>{/block:Video}
```

`+jumblrStr(type, content)` - Standard tumblr block as string (Great for nesting tags)
```jade
+jumblrStr('IndexPage', 'optional-class ')
section(class= jumblrStr)

//- output
<section class="{block:IndexPage}optional-class {/block:IndexPage}"></section>
```

`+jumblrStrList({type: content, type: content})` - Standard tumblr block list as string (Great for concatenating tags)
```jade
+jumblrStr("NoSearchResults", "no-results ")
+jumblrStrList({"TagPage": "tag ", "SearchPage": "search "+jumblrStr})
+jumblrStrList({"IndexPage": "index "+jumblrStrList, "PermalinkPage": "permalink "})

body(class= jumblrStrList)

//- output
<body class="{block:IndexPage}index {block:TagPage}tag {/block:TagPage}{block:SearchPage}search {block:NoSearchResults}no-results {/block:NoSearchResults}{/block:SearchPage}{/block:IndexPage}{block:PermalinkPage}permalink {/block:PermalinkPage}"></body>
```

## License
MIT
