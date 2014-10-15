# Jumblr

Jade Tubmlr Mixins

## Installation
- npm: `npm i jumblr`
- tarball: see latest releases

## Usage
include the `jumblr.jade` at the top of your main jade file:
```jade
include /path/to/jumblr.jade
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
