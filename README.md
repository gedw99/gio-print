# gio-print

GIO Printing package

To be upstreamed to https://github.com/gioui/gio-x and https://github.com/gioui/gio-example


## What it does 

In any app, eventually you want to provide Printing.

There are a myriad of ways to approach this, but with gio we can embed a PDF engine, and so build a PDF inside the gaolang app, and fully control the look of what we are printing.

The only problem then is providing that PDF to the Print Dialogue screen that is native to all Desktops, Mobiles, Tablets and the web.

This aims to fill exactly that gap.

## How it does it

GIO Platform provides the ability to hook into native OS API.

Apple UIKit: https://github.com/search?q=org%3Agioui+uikit&type=code


## Building / Compiling

The gogio tool provides toolng for buildign and packaging.


**Desktop**

YOu can just use ``` go run . ``` or ``` go build . ``` 

A simple example is here: https://github.com/gioui/gio-example/blob/main/notify/build_macos.go

**Mobile**

IOS, IPAD; Android, Apple TV via:

https://github.com/gioui/giouiorg/blob/main/content/doc/mobile.md


## Native API calls

**Apple**

It seems this is the best cross platform way to interact is via: 

https://developer.apple.com/documentation/uikit/uiprintinteractioncontroller/1618157-printingitem

