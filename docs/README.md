# Docs


## Workflows

When the Print Dialogue opens, the user can change the Paper size, and so the PDF will need to be re-generated.

There are likely to be other properites that a user can change in this Dialogue that will require regenerating the PDF.

## Initiating the workflow

On Desktop, GIOUI does not currently support Native menu, so we have a dedicated button in the GIO screen to kick off the Print workflow.

On Mobile, Printing is initiated via the Share OS button.

## Platform specifc notes

List of docs and screenshots for each platform.

**Web**

The standard Window.print(): https://developer.mozilla.org/en-US/docs/Web/API/Window/print

Web Mobile initiation is via the OS naive Share button.

Web Desktop, is via the Browser native Print button.

**Android**

Package summary: https://developer.android.com/reference/android/print/package-summary

Printing custom documents: https://developer.android.com/training/printing/custom-docs
- this hsows how to use a PDF !

Screenshot: [<img src="https://www.techotopia.com/images/9/9a/Android_print_page_range.png?ezimgfmt=rs:380x403/rscb1/ng:webp/ngcb1">](https://www.techotopia.com/images/9/9a/Android_print_page_range.png?ezimgfmt=rs:380x403/rscb1/ng:webp/ngcb1)


**IOS**

Use AirPrint to print from your iPhone, iPad, or iPod touch: https://support.apple.com/en-us/HT201387



**MAC**

Choose settings in the Print dialogue on Mac: https://support.apple.com/en-in/guide/mac-help/prtct002/mac

Set printing options for paper size, paper feed and more on Mac: https://support.apple.com/en-in/guide/mac-help/mh26678/12.0/mac/12.0

[<img src="https://help.apple.com/assets/5FFC9995A591642D7264E8CD/5FFC999CA591642D7264E900/en_GB/bfc459104d25a1d074499adea5100896.png">]


**Windows**






## API's

GIO Print uses the OS Native API.


**Apple**

It seems this is the best cross platform way to interact is via: 

https://developer.apple.com/documentation/uikit/uiprintinteractioncontroller/1618157-printingitem




