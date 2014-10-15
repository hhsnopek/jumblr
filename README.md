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
include node_modules/jumblr/lib/jumblr.jade
```

### Example

```jade
+jumblr('Video')
  li(class="post video")
    {Video-500}
    +jumblr('Caption')
      div(class="caption") {Caption}
```
output:
```html
{block:Video}
<li class="post video">{Video-500}{block:Caption}
  <div class="caption">{Caption}</div>{/block:Caption}
</li>{/block:Video}
```

## Mixins
```
+jumblr(type) //- type as String
```
