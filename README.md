# barKoder Barcode Scanner SDK plugin for Cordova
## Enterprise-grade barcode scanner SDK plugin for Cordova

The barKoder Barcode Scanner SDK cordova plugin grants an easy to use solution with a great and completely customizable interface that can be instantly integrated in both iOS and Android apps.

The [barKoder Barcode Scanner SDK](https://barkoder.com/barcode-scanner-sdk) will fully transform the user's smartphones and tablets that deploy your Enterprise and Consumer apps into rugged barcode scanning devices without the need to procure and maintain expensive and sluggish hardware devices that have a very short life span.

Even though the barKoder barcode scanner SDK is a relatively new product, it is already more advanced than other competitor API's. Its robust barcode reading engine can be used to read the content of the most widely used barcodes with lightning fast speed and unprecedented recognition rate:

1D - [Codabar](https://barkoder.com/barcode-types/codaba), [Code 11](https://barkoder.com/barcode-types/code-11), [Code 25](https://barkoder.com/barcode-types/code-25), [Code 39](https://barkoder.com/barcode-types/code-39), [Code 93](https://barkoder.com/barcode-types/code-93), [Code 128](https://barkoder.com/barcode-types/code-128), [EAN-8](https://barkoder.com/barcode-types/ean-upc-code), [EAN-13](https://barkoder.com/barcode-types/ean-upc-code), [Interleaved 2 of 5](https://barkoder.com/barcode-types/code-25), [ITF-14](https://barkoder.com/barcode-types/code-25), [MSI Plessey](https://barkoder.com/barcode-types/msi-plessey), [Pharmacode](https://barkoder.com/barcode-types/code-32), [Telepen](https://barkoder.com/barcode-types/telepen), [UPC-A](https://barkoder.com/barcode-types/ean-upc-code) & [UPC-E](https://barkoder.com/barcode-types/ean-upc-code)
2D - [Aztec Code](https://barkoder.com/barcode-types/aztec), [Aztec Compact](https://barkoder.com/barcode-types/aztec), [Data Matrix](https://barkoder.com/barcode-types/data-matrix), [DotCode](https://barkoder.com/barcode-types/dotcode), [PDF417](https://barkoder.com/barcode-types/pdf417), [Micro PDF417](https://barkoder.com/barcode-types/pdf417), [QR Code](https://barkoder.com/barcode-types/qr-code) & [Micro QR Code](https://barkoder.com/barcode-types/qr-code)

The [barKoder SDK](https://barkoder.com/) features multiple algorithms that handle a wide variety of barcode scanning scenarios with unprecedented performance in terms of speed and success rate: 
* [DPM Mode](https://barkoder.com/dpm-barcode-scanner-sdk) - Specially designed scanning template for decoding Data Matrix barcodes engraved using any Direct Part Marking (DPM) technique;
* [MatrixSight](https://barkoder.com/matrixsight) - Proprietary algorithm that can successfully scan QR Codes or Data Matrix barcodes even when they are missing their finder, timing and/or alignment patterns, even part of the data elements;
* [Segment Decoding](https://barkoder.com/segment-decoding) - The advanced barcode localization techniques implemented into the barKoder SDK grants an ability to recognize 1D barcodes that have significant deformations along their Z axis, getting especially handy when trying to recognize barcodes found on test tubes, bottles and other surfaces with rounded, curved, hollowed or otherwise irregular shapes;
* [VIN Barcode Scanning Mode](https://barkoder.com/vin-scanning-mode) - The most advanced VIN barcode scanning mode on the market, utilizing all the special algorithms of the barKoder SDK leading to the ultimate scanning experience of any kind of barcodes used for embedding Vehicle Identification Numbers, including Code 39, Code 128, QR Code and Data Matrix;
* [DeBlur Mode](https://barkoder.com/deblur-mode) - Whether there's lens, motion or focus blur present in EAN or UPC barcodes, the barKoder DeBlur Mode alleviates it fully and doesn't allow the scanning experience to suffer;
* [PDF417-LineSight](https://barkoder.com/pdf417-linesight) - The robust PDF417 barcode scanner SDK that is offered by barKoder can detect even the most severely damaged PDF417 codes, including missing their start and stop patterns, stop row indicators or even entire data columns, making it the sublime choice for apps that need to reliably scan US or Canadian driver's licenses, South African vehicle license discs or driver's licenses, as well as various types of ID's such as Military, Argentinian, Colombian or South African Smart ID Cards.

You can check out our free demo app Barcode Scanner by barKoder available both via [Apple App Store](https://apps.apple.com/us/app/barkoder-scanner/id6443715409?uo=2) & [Google Play Store](https://play.google.com/store/apps/details?id=com.barkoder.demoscanner).

## Documentation

You can find full documentation about the barKoder Barcode Reader SDK here: https://docs.barkoder.com

## Trial License

If you run the barKoder Barcode Scanner SDK without a valid trial or production license, all results upon successful barcode scans will be partially masked by asterisks (*). You can get a trial license simply by [registering on the barKoder Portal](https://barkoder.com/register) and utilizing the self-service for [Evaluation License Generation](https://barkoder.com/spr/new)! Each trial license will be good for an initial duration of 30 days and can be deployed to up to 25 devices. For any custom requirements, contact our sales team via sales@barkoder.com

Note that a trial license is only supposed to be utilized in a development or staging environment. If you decide to publish a trial license along with your app to the App Store, Play Store or any public store we won't be held accountable for any potential consequences. 

## Free Developer Support

Our support is completely free for integration or testing purposes and granted through the [barKoder Portal](https://barkoder.com/login). After registering and logging into your account, you only need to submit a [Support Issue](https://barkoder.com/issues) form. Alternatively, you can contact us by email via support@barkoder.com.

## Requirements

cordova is a cross-platform app runtime that makes it easy to build web apps that run natively on iOS, Android and the web. To get started with building apps using cordova, you'll need to meet certain requirements:

1. **Node.js and npm:**
   - Ensure you have Node.js installed on your machine.
2. **Text Editor or IDE:**
   - Choose a text editor or an integrated development environment (IDE) for coding. Popular choices include Visual Studio Code, Atom, or any other editor of your preference.
3. **Git:**
   - Cordova projects are often managed with Git, so having Git installed on your machine is recommended.
4. **Command Line Interface (CLI):**
   - Cordova commands are executed via the command line. Make sure you have a command line interface (CLI) installed and accessible on your system.
5. **Mobile Development SDKs:**
   - To build and run apps on specific platforms, you'll need the corresponding SDKs:
     - For iOS development: Xcode (available on macOS)
     - For Android development: Android Studio
6. **Install Cordova:**
   ```bash
   npm install -g cordova
   ```
7. **Add Platforms:**
   ```bash
   cordova platform add ios
   cordova platform add android
   ```
8. **Open IDE and Start Coding:**
   - Open your chosen IDE or text editor and start building your app using web technologies.
9. **Build and Run:**
   - Use Cordova commands to build and run your app on different platforms.
   ```bash
   cordova build ios
   cordova build android
   ```

## Install

```bash
cordova plugin add barkoder-cordova
```

## Install Manually
If you would like to install from a local folder you will need to follow these steps:

- Download zip
- Unpack zip file
- Rename folder to your liking (ex. barkoder-cordova)
- Move the folder to your liking but not in the project directory
- Finally:
```bash
cordova plugin add “/your-path/barkoder-cordova”
```

## Using the plugin 
## Angular

In your ts file:
```bash
declare var Barkoder: any;
import { BarcodeType } from 'plugins/barkoder-cordova-plugin/www/BarkoderConfig';

@ViewChild('barkoderView') barkoderViewRef!: ElementRef;

   setActiveBarcodeTypes() {
    Barkoder.setBarcodeTypeEnabled(BarcodeType.code128, true);
    Barkoder.setBarcodeTypeEnabled(BarcodeType.ean13, true);
   }

   setBarkoderSettings() {
    Barkoder.setRegionOfInterestVisible(true);
    Barkoder.setRegionOfInterest(5, 5, 90, 90);
    Barkoder.setCloseSessionOnResultEnabled(false);
    Barkoder.setImageResultEnabled(true);
    Barkoder.setBarcodeThumbnailOnResultEnabled(true);
    Barkoder.setBeepOnSuccessEnabled(true);
    Barkoder.setPinchToZoomEnabled(true);
    Barkoder.setZoomFactor(2.0);
   }

   async startScanning() {
    const boundingRect = this.barkoderViewRef.nativeElement.getBoundingClientRect() as DOMRect;
    Barkoder.registerWithLicenseKey("your_license_key");
    await Barkoder.initialize(
        Math.round(boundingRect.width), 
        Math.round(boundingRect.height), 
        Math.round(boundingRect.x), 
        Math.round(boundingRect.y))

    this.setBarkoderSettings();
    this.setActiveBarcodeTypes();

    Barkoder.startScanning((barkoderResult: any) => {
      console.log("Result: " + barkoderResult.textualData);
    }, (err: any) => {
      console.log(err);
    });
   }
```

In your HTML file add the barkoderView div id:
```bash
<div id="barkoderView" #barkoderView >
```

In your scss file set the desired barkoderView height:
```bash
#barkoderView {
   height: 400px;
}
```