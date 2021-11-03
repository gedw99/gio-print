# Docs


## Workflows

When the Print Dialogue opens, the user can change the Paper size, and so the PDF will need to be re-generated.

There are likely to be other properites that a user can change in this Dialogue that will require regenerating the PDF.

## Initiating the workflow

On Desktop, GIOUI does not currently support Native menu, so we have a dedicated button in the GIO screen to kick off the Print workflow.

On Mobile, Printing is initiated via the Share OS button.

## Print Dialogue Screenshots and Notes


**WEB**

Window.print(): https://developer.mozilla.org/en-US/docs/Web/API/Window/print

**IOS**

Use AirPrint to print from your iPhone, iPad, or iPod touch: https://support.apple.com/en-us/HT201387

[<img src="https://support.apple.com/library/content/dam/edam/applecare/images/en_US/iOS/ios13-iphone-xs-pages-airplay-print-printer-options.jpg">](https://support.apple.com/library/content/dam/edam/applecare/images/en_US/iOS/ios13-iphone-xs-pages-airplay-print-printer-options.jpg)

**MAC**

Choose settings in the Print dialogue on Mac: https://support.apple.com/en-in/guide/mac-help/prtct002/mac

Set printing options for paper size, paper feed and more on Mac: https://support.apple.com/en-in/guide/mac-help/mh26678/12.0/mac/12.0

[<img src="https://help.apple.com/assets/5FFC9995A591642D7264E8CD/5FFC999CA591642D7264E900/en_GB/bfc459104d25a1d074499adea5100896.png">]





## API's

GIO Print uses the OS Native API.


**Apple**

It seems this is the best cross platform way to interact is via: 

https://developer.apple.com/documentation/uikit/uiprintinteractioncontroller/1618157-printingitem




