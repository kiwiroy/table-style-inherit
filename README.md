# table-style-inherit - an extension for quarto

This filter adds a `custom-style` attribute to the table block. In this example with the value `StyleWithTableDestination`.

## Installing

```bash
quarto add kiwiroy/table-style-inherit
```

This will install the extension under the `_extensions` subdirectory.
If you're using version control, you will want to check in this directory.

## Using

Use this in the front-matter of the document
```yaml
---
title: "Your document"
filters:
  - table-style-inherit
---
```

Wrap the table like this.
```markdown
::: {custom-style="StyleWithTableDestination"}
| Year | Score | Title                  |
|------+-------+------------------------|
| 1968 | 86    | Greetings              |
:::
```
## Example

Here is the source code for a minimal example: [example.qmd](example.qmd).

