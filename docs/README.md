# Docs


## Workflows

There is a workflow where by the User can change the Print settings, and so the golang code needs to respond. For example changing the Paper size, Colour, etc.

**IOS**

[<img src="https://manula.r.sizr.io/large/user/4606/img/web-ios-anywhere-print-options_v2.png">](https://manula.r.sizr.io/large/user/4606/img/web-ios-anywhere-print-options_v2.png)

**MAC**

https://support.apple.com/en-in/guide/mac-help/prtct002/mac

[<img src="https://communities.efi.com/sfc/servlet.shepherd/version/renditionDownload?rendition=THUMB720BY480&versionId=06839000004rUMp&operationContext=CHATTER&contentId=05T3900000GyK2B">]


**WEB**

Safari in this case...

[<img src="https://qph.fs.quoracdn.net/main-qimg-572dbb1189f1e196d3445f26d3539368">](https://qph.fs.quoracdn.net/main-qimg-572dbb1189f1e196d3445f26d3539368




## How it does it



GIO Platform provides the ability to hook into the native OS API.

Examples / mechanisms for this in hte code base below:

**Apple UIKit**

https://github.com/search?q=org%3Agioui+uikit&type=code

**Android**

TODO...


## Building / Compiling

See https://github.com/gioui, but in general the gogio tool provides toolng for building and packaging.

**Desktop**

Use ``` go run . ``` or ``` go build . ``` 

A simple example is here: https://github.com/gioui/gio-example/blob/main/notify/build_macos.go

**Mobile**

IOS, IPAD; Android, Apple TV via:

https://github.com/gioui/giouiorg/blob/main/content/doc/mobile.md


## Native API calls

**Apple**

It seems this is the best cross platform way to interact is via: 

https://developer.apple.com/documentation/uikit/uiprintinteractioncontroller/1618157-printingitem