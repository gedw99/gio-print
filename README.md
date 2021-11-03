# gio-print

!! Under Construction !!

GIO Printing package

To be upstreamed to https://github.com/gioui/gio-x and https://github.com/gioui/gio-example


## Example

Currently we use this example of generating a PDF in golang as the example. Others will be added once Printing works, but for now we keep it simple.

Later a GIOUI PDF engine can be established that is best aligned to the GIOUI architecture.

Renders a tree as a PDF. Non-Deterministic.

[<img src="https://raw.githubusercontent.com/gedw99/gio-print/main/example/tree/tree.png">](https://raw.githubusercontent.com/gedw99/gio-print/main/example/tree/tree.png)

## What it does 

Provides the ability to Print directly from within a GIOUI app on Web, Desktop and Mobile.

1. Generates the PDF to memory ( or file system if its large ). 
2. Prints that generated PDF via the Native OS Print Dialogue.
