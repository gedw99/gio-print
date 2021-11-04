# API

API notes for each Platform.

## Workflows

When the Print Dialogue opens, the user can change the properties.

These properties are used when creating the PDF document. The properties are:

- paper size,
- orientation,
- resolution
- color settings
- page ranges ( e.g 1-4, 8,9, 11-13)

Some of these properties are OS specific also.


## Initiating the workflow

On Desktop, GIOUI does not currently support Native menu's, so we need to have a dedicated button in the GIO screen to kick off the Print workflow. 

- Note that later, we can use https://github.com/tadvi/winc/blob/master/menu.go to get Native Windows menu, and hence a Print button in the menu.

On Mobile, Printing is initiated via the operating system's Share button.



## Web

``` Window.print() ```

https://developer.mozilla.org/en-US/docs/Web/API/Window/print

## Apple ( iOS , iPadOS, MAC )

Choose settings in the Print dialogue on Mac: https://support.apple.com/en-in/guide/mac-help/prtct002/mac

Set printing options for paper size, paper feed and more on Mac: https://support.apple.com/en-in/guide/mac-help/mh26678/12.0/mac/12.0

UIKit API: 

``` var printingItem: Any? { get set } ``` 

Supports: iOS 4.2+, iPadOS 4.2+, Mac Catalyst 13.0+

https://developer.apple.com/documentation/uikit/uiprintinteractioncontroller/1618157-printingitem

## Android

Package summary: https://developer.android.com/reference/android/print/package-summary

Printing custom documents: https://developer.android.com/training/printing/custom-docs
- this shows how to use a PDF !

Detailed code example and walkthrough: https://www.techotopia.com/index.php/An_Android_Custom_Document_Printing_Tutorial

## Windows ( all )

API docs here:

``` PageSetupDlg``` function is the recommended way for New apps.

https://docs.microsoft.com/en-us/windows/win32/dlgbox/page-setup-dialog-box

``` PrintDlgEx ``` function is the Old way

https://docs.microsoft.com/en-us/windows/win32/printdocs/retrieving-a-printer-device-context#display-a-print-common-dialog-box

https://github.com/MicrosoftDocs/win32/blob/docs/desktop-src/dlgbox/using-common-dialog-boxes.md#displaying-the-print-dialog-box


Print Preview and print properties flow: https://docs.microsoft.com/en-us/windows/win32/dlgbox/using-common-dialog-boxes?redirectedfrom=MSDN#setting-up-the-printed-page


## Linux

Dont know. Feel free to PR any info you have thats relevant.



