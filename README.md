pdmake
---

Pandoc Document Creation Tool with Your Template

## Usage

1. Place pdmake header in your document (Pandoc Markdown).
```
---
_pdmake_template: template.tex
_pdmake_output: pdf
_pdmake_arg: --toc
// your pandoc yaml header
---
```

2. Place `template.tex` and Execute in your terminal.
```
pdmake document.md
```

3. Run and create with your template and document you specify extension.
