---
marp: true
header: <h1>Header</h1> header content
footer: Footer
style: |
  section {
    display: grid;
    grid-template:
      "header" auto
      "contents" 1fr
      "footer" auto / 1fr;
  }

  section > header {
    all: unset;
    grid-area: header;
    background: #fcc;
    display:flex;
    flex-direction: column;
    align-items: flex-end;
  }

  section > div {
    grid-area: contents;
    background: #cfc;
  }

  section > footer {
    all: unset;
    grid-area: footer;
    background: #ccf;
  }
---

<div>

Example

</div>

---

<div>

Example

</div>