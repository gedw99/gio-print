# Docs


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

On Desktop, GIOUI does not currently support Native menus, so we need to have a dedicated button in the GIO screen to kick off the Print workflow. 

- Note that later, we can use https://github.com/tadvi/winc/blob/master/menu.go to get Native Windows menu, and hence a Print button in the menu.

On Mobile, Printing is initiated via the Share OS button.

## Platform specifc notes

List of docs and screenshots for each platform.

**Web**

The standard Window.print(): https://developer.mozilla.org/en-US/docs/Web/API/Window/print

Web Mobile initiation is via the OS naive Share button.

Screenshot: 



Web Desktop, is via the Browser native Print button.

Screenshot: 


**Android**

Package summary: https://developer.android.com/reference/android/print/package-summary

Printing custom documents: https://developer.android.com/training/printing/custom-docs
- this shows how to use a PDF !

Detailed code example and walkthrough: https://www.techotopia.com/index.php/An_Android_Custom_Document_Printing_Tutorial

Screenshot ( left ): 

[<img src="https://eclipsesource.com/wp-content/uploads/2014/04/tabris-print3.png">](https://eclipsesource.com/wp-content/uploads/2014/04/tabris-print3.png)




**IOS**

Use AirPrint to print from your iPhone, iPad, or iPod touch: https://support.apple.com/en-us/HT201387

Screenshot ( right ): 

[<img src="https://eclipsesource.com/wp-content/uploads/2014/04/tabris-print3.png">](https://eclipsesource.com/wp-content/uploads/2014/04/tabris-print3.png)





**MAC**

Choose settings in the Print dialogue on Mac: https://support.apple.com/en-in/guide/mac-help/prtct002/mac

Set printing options for paper size, paper feed and more on Mac: https://support.apple.com/en-in/guide/mac-help/mh26678/12.0/mac/12.0

Screenshot: 

[<img src="https://help.apple.com/assets/5FFC9995A591642D7264E8CD/5FFC999CA591642D7264E900/en_GB/bfc459104d25a1d074499adea5100896.png">](https://help.apple.com/assets/5FFC9995A591642D7264E8CD/5FFC999CA591642D7264E900/en_GB/bfc459104d25a1d074499adea5100896.png)


**Windows**


Screenshot: 

[<img src="https://help.apple.com/assets/5FFC9995A591642D7264E8CD/5FFC999CA591642D7264E900/en_GB/bfc459104d25a1d074499adea5100896.png">](https://help.apple.com/assets/5FFC9995A591642D7264E8CD/5FFC999CA591642D7264E900/en_GB/bfc459104d25a1d074499adea5100896.png)


**Linux**



## API's

GIO Print uses the OS Native API.


**Apple**

UIKit API Docs here: 

var printingItem: Any? { get set }

https://developer.apple.com/documentation/uikit/uiprintinteractioncontroller/1618157-printingitem

iOS 4.2+
iPadOS 4.2+
Mac Catalyst 13.0+



**Windows**

API docs here:

PrintDlgEx function

https://docs.microsoft.com/en-us/windows/win32/printdocs/retrieving-a-printer-device-context#display-a-print-common-dialog-box


