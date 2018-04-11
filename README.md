# handlebars-obj

[![Build Status](https://travis-ci.org/tamino-martinius/meteor-handlebars-obj.png?branch=master)](https://travis-ci.org/tamino-martinius/meteor-handlebars-obj)

This Version is depricated with meteor 0.8.0 - see [ui-obj](https://github.com/tamino-martinius/meteor-ui-obj) for a 0.8.0 compatible version

Easily create plain objects with computed keys as Handlebars helper.

Useful to set the context of the current scope e.g. for `iron-router` paths.

```hbs
{{#with $obj "one" 1 "two" 2}}
```

sets context to

```hbs
{one: 1, two: 2}
```

Merge the context within a `each` block with the outer context

```hbs
{{#each items}}
  {{#with $obj .. .}}
```
