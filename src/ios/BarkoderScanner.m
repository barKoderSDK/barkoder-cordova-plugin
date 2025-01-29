/********* BarkoderScanner.m Cordova Plugin Implementation *******/

#import <UIKit/UIKit.h>
#import <Cordova/CDV.h>
#import "BarkoderSDK/BarkoderSDK.h"

@interface BarkoderScanner : CDVPlugin {
}

// Barkoder methods
- (void)initialize:(CDVInvokedUrlCommand*)command;
- (void)registerWithLicenseKey:(CDVInvokedUrlCommand*)command;
- (void)setZoomFactor:(CDVInvokedUrlCommand*)command;
- (void)setFlashEnabled:(CDVInvokedUrlCommand*)command;
- (void)startCamera:(CDVInvokedUrlCommand*)command;
- (void)startScanning:(CDVInvokedUrlCommand*)command;
- (void)stopScanning:(CDVInvokedUrlCommand*)command;
- (void)pauseScanning:(CDVInvokedUrlCommand*)command;
- (void)scanImage:(CDVInvokedUrlCommand*)command;
- (void)setLocationLineColor:(CDVInvokedUrlCommand*)command;
- (void)setLocationLineWidth:(CDVInvokedUrlCommand*)command;
- (void)setRoiLineColor:(CDVInvokedUrlCommand*)command;
- (void)setRoiLineWidth:(CDVInvokedUrlCommand*)command;
- (void)setRoiOverlayBackgroundColor:(CDVInvokedUrlCommand*)command;
- (void)setCloseSessionOnResultEnabled:(CDVInvokedUrlCommand*)command;
- (void)setImageResultEnabled:(CDVInvokedUrlCommand*)command;
- (void)setLocationInImageResultEnabled:(CDVInvokedUrlCommand*)command;
- (void)setRegionOfInterest:(CDVInvokedUrlCommand*)command;
- (void)setThreadsLimit:(CDVInvokedUrlCommand*)command;
- (void)setLocationInPreviewEnabled:(CDVInvokedUrlCommand*)command;
- (void)setPinchToZoomEnabled:(CDVInvokedUrlCommand*)command;
- (void)setRegionOfInterestVisible:(CDVInvokedUrlCommand*)command;
- (void)setBarkoderResolution:(CDVInvokedUrlCommand*)command;
- (void)setBeepOnSuccessEnabled:(CDVInvokedUrlCommand*)command;
- (void)setVibrateOnSuccessEnabled:(CDVInvokedUrlCommand*)command;
- (void)showLogMessages:(CDVInvokedUrlCommand*)command;
- (void)setBarcodeTypeLengthRange:(CDVInvokedUrlCommand*)command;
- (void)setEncodingCharacterSet:(CDVInvokedUrlCommand*)command;
- (void)setDecodingSpeed:(CDVInvokedUrlCommand*)command;
- (void)setFormattingType:(CDVInvokedUrlCommand*)command;
- (void)setCode11ChecksumType:(CDVInvokedUrlCommand*)command;
- (void)setMsiChecksumType:(CDVInvokedUrlCommand*)command;
- (void)setCode39ChecksumType:(CDVInvokedUrlCommand*)command;
- (void)setBarcodeTypeEnabled:(CDVInvokedUrlCommand*)command;
- (void)setMulticodeCachingEnabled:(CDVInvokedUrlCommand*)command;
- (void)setMulticodeCachingDuration:(CDVInvokedUrlCommand*)command;
- (void)setMaximumResultsCount:(CDVInvokedUrlCommand*)command;
- (void)setBarcodeThumbnailOnResultEnabled:(CDVInvokedUrlCommand*)command;
- (void)setDuplicatesDelayMs:(CDVInvokedUrlCommand*)command;
- (void)setThresholdBetweenDuplicatesScans:(CDVInvokedUrlCommand*)command;
- (void)setUpcEanDeblurEnabled:(CDVInvokedUrlCommand*)command;
- (void)setMisshaped1DEnabled:(CDVInvokedUrlCommand*)command;
- (void)setEnableVINRestrictions:(CDVInvokedUrlCommand*)command;
- (void)setDatamatrixDpmModeEnabled:(CDVInvokedUrlCommand*)command;
- (void)setQrDpmModeEnabled:(CDVInvokedUrlCommand*)command;
- (void)setQrMicroDpmModeEnabled:(CDVInvokedUrlCommand*)command;
- (void)configureBarkoder:(CDVInvokedUrlCommand*)command;
- (void)setIdDocumentMasterChecksumEnabled:(CDVInvokedUrlCommand*)command;
- (void)setUPCEexpandToUPCA:(CDVInvokedUrlCommand *)command;
- (void)setUPCE1expandToUPCA:(CDVInvokedUrlCommand *)command;
- (void)setCustomOption:(CDVInvokedUrlCommand *)command;
- (void)setScanningIndicatorColor:(CDVInvokedUrlCommand *)command;
- (void)setScanningIndicatorWidth:(CDVInvokedUrlCommand *)command;
- (void)setScanningIndicatorAnimation:(CDVInvokedUrlCommand *)command;
- (void)setScanningIndicatorAlwaysVisible:(CDVInvokedUrlCommand *)command;
- (void)setDynamicExposure:(CDVInvokedUrlCommand *)command;
- (void)setCentricFocusAndExposure:(CDVInvokedUrlCommand *)command;
- (void)setEnableComposite:(CDVInvokedUrlCommand *)command;
- (void)setVideoStabilization:(CDVInvokedUrlCommand *)command;

- (void)isFlashAvailable:(CDVInvokedUrlCommand*)command;
- (void)isCloseSessionOnResultEnabled:(CDVInvokedUrlCommand*)command;
- (void)isImageResultEnabled:(CDVInvokedUrlCommand*)command;
- (void)isLocationInImageResultEnabled:(CDVInvokedUrlCommand*)command;
- (void)isLocationInPreviewEnabled:(CDVInvokedUrlCommand*)command;
- (void)isPinchToZoomEnabled:(CDVInvokedUrlCommand*)command;
- (void)isRegionOfInterestVisible:(CDVInvokedUrlCommand*)command;
- (void)isBeepOnSuccessEnabled:(CDVInvokedUrlCommand*)command;
- (void)isVibrateOnSuccessEnabled:(CDVInvokedUrlCommand*)command;
- (void)getVersion:(CDVInvokedUrlCommand*)command;
- (void)getLocationLineColorHex:(CDVInvokedUrlCommand*)command;
- (void)getRoiLineColorHex:(CDVInvokedUrlCommand*)command;
- (void)getRoiOverlayBackgroundColorHex:(CDVInvokedUrlCommand*)command;
- (void)getMaxZoomFactor:(CDVInvokedUrlCommand*)command;
- (void)getLocationLineWidth:(CDVInvokedUrlCommand*)command;
- (void)getRoiLineWidth:(CDVInvokedUrlCommand*)command;
- (void)getRegionOfInterest:(CDVInvokedUrlCommand*)command;
- (void)getBarcodeTypeLengthRange:(CDVInvokedUrlCommand*)command;
- (void)getMsiChecksumType:(CDVInvokedUrlCommand*)command;
- (void)getCode39ChecksumType:(CDVInvokedUrlCommand*)command;
- (void)getCode11ChecksumType:(CDVInvokedUrlCommand*)command;
- (void)getEncodingCharacterSet:(CDVInvokedUrlCommand*)command;
- (void)getDecodingSpeed:(CDVInvokedUrlCommand*)command;
- (void)getFormattingType:(CDVInvokedUrlCommand*)command;
- (void)getThreadsLimit:(CDVInvokedUrlCommand*)command;
- (void)getMaximumResultsCount:(CDVInvokedUrlCommand*)command;
- (void)getDuplicatesDelayMs:(CDVInvokedUrlCommand*)command;
- (void)isBarcodeTypeEnabled:(CDVInvokedUrlCommand*)command;
- (void)getMulticodeCachingEnabled:(CDVInvokedUrlCommand*)command;
- (void)getMulticodeCachingDuration:(CDVInvokedUrlCommand*)command;
- (void)isUpcEanDeblurEnabled:(CDVInvokedUrlCommand*)command;
- (void)isMisshaped1DEnabled:(CDVInvokedUrlCommand*)command;
- (void)isBarcodeThumbnailOnResultEnabled:(CDVInvokedUrlCommand*)command;
- (void)getThresholdBetweenDuplicatesScans:(CDVInvokedUrlCommand*)command;
- (void)isVINRestrictionsEnabled:(CDVInvokedUrlCommand*)command;
- (void)getBarkoderResolution:(CDVInvokedUrlCommand*)command;
- (void)isDatamatrixDpmModeEnabled:(CDVInvokedUrlCommand*)command;
- (void)isQrDpmModeEnabled:(CDVInvokedUrlCommand*)command;
- (void)isQrMicroDpmModeEnabled:(CDVInvokedUrlCommand*)command;
- (void)isIdDocumentMasterChecksumEnabled:(CDVInvokedUrlCommand*)command;
- (void)getScanningIndicatorColorHex:(CDVInvokedUrlCommand *)command;
- (void)getScanningIndicatorWidth:(CDVInvokedUrlCommand *)command;
- (void)getScanningIndicatorAnimation:(CDVInvokedUrlCommand *)command;
- (void)isScanningIndicatorAlwaysVisible:(CDVInvokedUrlCommand *)command;



// Enum to represent different Barkoder error types
typedef NS_ENUM(NSInteger, BarkoderErrors) {
    BARKODER_VIEW_DESTROYED = 1,
    INVALID_RESOLUTION,
    THREADS_LIMIT_NOT_SET,
    ROI_NOT_SET,
    COLOR_NOT_SET,
    BARCODE_TYPE_NOT_FOUNDED,
    BARCODE_TYPE_NOT_SUPPORTED,
    DECODING_SPEED_NOT_FOUNDED,
    FORMATTING_TYPE_NOT_FOUNDED,
    LENGTH_RANGE_NOT_VALID,
    CHECKSUM_TYPE_NOT_FOUNDED,
    BARKODER_CONFIG_IS_NOT_VALID
};

// Method to get the error code based on the error type
- (NSString *)barkoderErrorCode:(BarkoderErrors)error;
// Method to get the error message based on the error type
- (NSString *)barkoderErorrMessage:(BarkoderErrors)error;

@end

// BarkoderResult delegate
@interface BarkoderScanner() <BarkoderResultDelegate>

@end

@implementation BarkoderScanner

BarkoderView *barkoderView;
NSString *licenseKey;

NSString *resultCallbackId;
CDVPluginResult* pluginResult = nil;

- (void)initialize:(CDVInvokedUrlCommand*)command {
    NSMutableDictionary *barkoderViewBounds = [[NSMutableDictionary alloc] init];
    
    barkoderViewBounds[@"width"] = [command.arguments objectAtIndex:0];
    barkoderViewBounds[@"height"] = [command.arguments objectAtIndex:1];
    barkoderViewBounds[@"x"] = [command.arguments objectAtIndex:2];
    barkoderViewBounds[@"y"] = [command.arguments objectAtIndex:3];
    
    CGRect barkoderViewFrame = CGRectMake([[barkoderViewBounds objectForKey:@"x"] doubleValue], [[barkoderViewBounds objectForKey:@"y"] doubleValue], [[barkoderViewBounds objectForKey:@"width"] doubleValue], [[barkoderViewBounds objectForKey:@"height"] doubleValue]);
    
    barkoderView = [[BarkoderView alloc] initWithFrame:barkoderViewFrame];
    [self createBarkoderConfig];
    
    [self.webView.superview addSubview:barkoderView];
    
    [self callbackSuccessMessage:command message:@"barkoderView initialized"];
}

- (void)createBarkoderConfig {
    // In order to perform scanning, config property need to be set before
    // If license key is not valid you will receive results with asterisks inside
    barkoderView.config = [[BarkoderConfig alloc] initWithLicenseKey:licenseKey licenseCheckHandler:^(LicenseCheckResult * _Nonnull licenseResult) {
        NSLog(@"%@", [NSString stringWithFormat:@"Licensing SDK: %@", licenseResult]);
    }];
}

- (void)registerWithLicenseKey:(CDVInvokedUrlCommand*)command {
    NSString* licenseKeyVar = [command.arguments objectAtIndex:0];
    
    licenseKey = licenseKeyVar;
    
    NSString *licenseKeyValue = [NSString stringWithFormat:@"licenseKey: %@", licenseKey];
    [self callbackSuccessMessage:command message:licenseKeyValue];
}

- (void)scanningFinished:(NSArray<DecoderResult *> * _Nonnull)decoderResults thumbnails:(NSArray<UIImage *> * _Nullable)thumbnails image:(UIImage * _Nullable)image {
    dispatch_async(dispatch_get_main_queue(), ^{
        NSDictionary *barkoderResultsToJSON = [self barkoderResultsToJson:decoderResults thumbnails:thumbnails image:image];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDictionary:barkoderResultsToJSON];
        if (![barkoderView.config closeSessionOnResultEnabled]) {
            [pluginResult setKeepCallbackAsBool:YES];
        }
        [self.commandDelegate sendPluginResult:pluginResult callbackId:resultCallbackId];
    });
}

- (void)callbackSuccess:(CDVInvokedUrlCommand*)command {
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)callbackSuccessMessage:(CDVInvokedUrlCommand*)command message:(NSString*)message {
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:message];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)callbackSuccessBoolean:(CDVInvokedUrlCommand*)command boolean:(BOOL)boolean {
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:boolean];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)callbackSuccessDouble:(CDVInvokedUrlCommand*)command value:(float)value {
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsDouble:value];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)callbackSuccessInt:(CDVInvokedUrlCommand*)command value:(int)value {
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsInt:value];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)callbackErrorMessage:(CDVInvokedUrlCommand*)command message:(NSString*)message {
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:message];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

// MARK: - Setters

- (void)setZoomFactor:(CDVInvokedUrlCommand*)command {
    float zoomFactor = [[command.arguments objectAtIndex:0 ] floatValue];
    [barkoderView setZoomFactor:zoomFactor];
    
    [self callbackSuccess:command];
}

- (void)setFlashEnabled:(CDVInvokedUrlCommand*)command {
    BOOL enabled = [[command.arguments objectAtIndex:0] boolValue];
    [barkoderView setFlash:enabled];
    
    [self callbackSuccess:command];
}

- (void)startCamera:(CDVInvokedUrlCommand*)command {
    [barkoderView startCamera];
    
    [self callbackSuccess:command];
}

- (void)startScanning:(CDVInvokedUrlCommand*)command {
    dispatch_async(dispatch_get_main_queue(), ^{
        NSError *error = nil;
        resultCallbackId = command.callbackId;
        [barkoderView startScanning:self error:&error];
    });
}

- (void)stopScanning:(CDVInvokedUrlCommand*)command {
    [barkoderView stopScanning];
    
    [self callbackSuccess:command];
}

- (void)pauseScanning:(CDVInvokedUrlCommand*)command {
    [barkoderView pauseScanning];
    
    [self callbackSuccess:command];
}

- (void)scanImage:(CDVInvokedUrlCommand*)command {
  //    dispatch_async(dispatch_get_main_queue(), ^{
  
  resultCallbackId = command.callbackId;
  
  NSString* base64Image = [command.arguments objectAtIndex:0];
  
  if (!base64Image || ![base64Image isKindOfClass:[NSString class]]) {
    return;
  }
  
  NSData *imageData = [[NSData alloc] initWithBase64EncodedString:base64Image options:NSDataBase64DecodingIgnoreUnknownCharacters];
  if (!imageData) {
    return;
  }
  
  UIImage *image = [UIImage imageWithData:imageData];
  if (!image) {
    return;
  }
  
  if (!barkoderView.config) {
    return;
  }
  
  [BarkoderHelper scanImage:image bkdConfig:barkoderView.config resultDelegate:self];
  
  //    });
}

- (void)setLocationLineColor:(CDVInvokedUrlCommand *)command {
    NSString* hexColor = [command.arguments objectAtIndex:0];
    
    [barkoderView.config setLocationLineColor:[self colorWithHexString:hexColor command:command]];
    
    [self callbackSuccess:command];
}

- (void)setLocationLineWidth:(CDVInvokedUrlCommand *)command {
    float lineWidth = [[command.arguments objectAtIndex:0] floatValue];
    
    [barkoderView.config setLocationLineWidth:lineWidth];
    
    [self callbackSuccess:command];
}

- (void)setRoiLineColor:(CDVInvokedUrlCommand*)command {
    NSString* hexColor = [command.arguments objectAtIndex:0];
    
    [barkoderView.config setRoiLineColor:[self colorWithHexString:hexColor command:command]];
    
    [self callbackSuccess:command];
}

- (void)setRoiLineWidth:(CDVInvokedUrlCommand *)command {
    float lineWidth = [[command.arguments objectAtIndex:0] floatValue];
    
    [barkoderView.config setRoiLineWidth:lineWidth];
    
    [self callbackSuccess:command];
}

- (void)setRoiOverlayBackgroundColor:(CDVInvokedUrlCommand *)command {
    NSString* hexColor = [command.arguments objectAtIndex:0];
    
    [barkoderView.config setRoiOverlayBackgroundColor:[self colorWithHexString:hexColor command:command]];
    
    [self callbackSuccess:command];
}

- (void)setCloseSessionOnResultEnabled:(CDVInvokedUrlCommand *)command {
    BOOL enabled = [[command.arguments objectAtIndex:0] boolValue];
    
    [barkoderView.config setCloseSessionOnResultEnabled:enabled];
    
    [self callbackSuccess:command];
}

- (void)setImageResultEnabled:(CDVInvokedUrlCommand *)command {
    BOOL enabled = [[command.arguments objectAtIndex:0] boolValue];
    
    [barkoderView.config setImageResultEnabled:enabled];
    
    [self callbackSuccess:command];
}

- (void)setLocationInImageResultEnabled:(CDVInvokedUrlCommand *)command {
    BOOL enabled = [[command.arguments objectAtIndex:0] boolValue];
    
    [barkoderView.config setLocationInImageResultEnabled:enabled];
    
    [self callbackSuccess:command];
}

- (void)setRegionOfInterest:(CDVInvokedUrlCommand*)command {
    CGFloat left = [[command.arguments objectAtIndex:0 ] floatValue];
    CGFloat top = [[command.arguments objectAtIndex:1 ] floatValue];
    CGFloat width = [[command.arguments objectAtIndex:2 ] floatValue];
    CGFloat height = [[command.arguments objectAtIndex:3 ] floatValue];
    
    CGRect roi = CGRectMake(left, top, width, height);
    
    @try {
        NSError *error = nil;
        [barkoderView.config setRegionOfInterest:roi error:&error];
        [self callbackSuccess:command];
    } @catch (NSException *exception) {
        [self callbackErrorMessage:command message:[self barkoderErorrMessage:ROI_NOT_SET]];
    }
}

- (void)setThreadsLimit:(CDVInvokedUrlCommand *)command {
    int threadsLimit = [[command.arguments objectAtIndex:0] intValue];
    
    @try {
        NSError *error = nil;
        [barkoderView.config setThreadsLimit:threadsLimit error:&error];
        
        [self callbackSuccess:command];
    }
    @catch (NSException *exception) {
        [self callbackErrorMessage:command message:[self barkoderErorrMessage:THREADS_LIMIT_NOT_SET]];
    }
}

- (void)setLocationInPreviewEnabled:(CDVInvokedUrlCommand *)command {
    BOOL enabled = [[command.arguments objectAtIndex:0] boolValue];
    
    [barkoderView.config setLocationInPreviewEnabled:enabled];
    
    [self callbackSuccess:command];
}

- (void)setPinchToZoomEnabled:(CDVInvokedUrlCommand *)command {
    BOOL enabled = [[command.arguments objectAtIndex:0] boolValue];
    
    [barkoderView.config setPinchToZoomEnabled:enabled];
    
    [self callbackSuccess:command];
}

- (void)setRegionOfInterestVisible:(CDVInvokedUrlCommand *)command {
    BOOL regionOfInterestVisible = [[command.arguments objectAtIndex:0] boolValue];
    
    [barkoderView.config setRegionOfInterestVisible:regionOfInterestVisible];
    
    [self callbackSuccess:command];
}

- (void)setBarkoderResolution:(CDVInvokedUrlCommand *)command {
    int index = [[command.arguments objectAtIndex:0] intValue];
    
    BarkoderResolution barkoderResolution = (BarkoderResolution) index;
    
    if (barkoderResolution == BarkoderResolutionHD || barkoderResolution == BarkoderResolutionFHD || barkoderResolution ==  BarkoderResolutionUHD) { // HD = 0, FHD = 1, UHD = 2
        [barkoderView.config setBarkoderResolution:barkoderResolution];
        
        [self callbackSuccess:command];
    } else {
        [self callbackErrorMessage:command message:[self barkoderErorrMessage:INVALID_RESOLUTION]];
    }
}

- (void)setBeepOnSuccessEnabled:(CDVInvokedUrlCommand *)command {
    BOOL enabled = [[command.arguments objectAtIndex:0] boolValue];
    
    [barkoderView.config setBeepOnSuccessEnabled:enabled];
    
    [self callbackSuccess:command];
}

- (void)setVibrateOnSuccessEnabled:(CDVInvokedUrlCommand *)command {
    BOOL enabled = [[command.arguments objectAtIndex:0] boolValue];
    
    [barkoderView.config setVibrateOnSuccessEnabled:enabled];
    
    [self callbackSuccess:command];
}

- (void)showLogMessages:(CDVInvokedUrlCommand *)command {
    BOOL show = [[command.arguments objectAtIndex:0] boolValue];
    
    // TODO: - Logic about log messages
    
    [self callbackSuccess:command];
}

- (void)setBarcodeTypeLengthRange:(CDVInvokedUrlCommand*)command {
    int typeRawValue = [[command.arguments objectAtIndex:0 ] intValue];
    int min = [[command.arguments objectAtIndex:1 ] intValue];
    int max = [[command.arguments objectAtIndex:2 ] intValue];
    
    DecoderType decoderType = (DecoderType) typeRawValue;
    SpecificConfig *specificConfig = [[SpecificConfig alloc] initWithDecoderType:decoderType];
    
    if (!specificConfig) {
        [self callbackErrorMessage:command message:[self barkoderErorrMessage:BARCODE_TYPE_NOT_FOUNDED]];
        return;
    }
    
    switch ([specificConfig decoderType]) {
        case Code128:
        case Code93:
        case Code39:
        case Code11:
        case Msi:
        case Codabar:
            [specificConfig setLengthRangeWithMinimum:min maximum:max];
            [self callbackSuccess:command];
        default:
            [self callbackErrorMessage:command message:[self barkoderErorrMessage:BARCODE_TYPE_NOT_SUPPORTED]];
    }
}

- (void)setEncodingCharacterSet:(CDVInvokedUrlCommand *)command {
    NSString* characterSet = [command.arguments objectAtIndex:0];
    
    barkoderView.config.decoderConfig.encodingCharacterSet = characterSet;
    
    [self callbackSuccess:command];
}

- (void)setDecodingSpeed:(CDVInvokedUrlCommand *)command {
    int index = [[command.arguments objectAtIndex:0] intValue];
    
    DecodingSpeed decodingSpeed = (DecodingSpeed) index;
    
  if (decodingSpeed == Fast || decodingSpeed == Normal || decodingSpeed == Slow || decodingSpeed == Rigorous) { // Fast = 0, Normal = 1, Slow = 2, Rigorous = 3
        barkoderView.config.decoderConfig.decodingSpeed = decodingSpeed;
        
        [self callbackSuccess:command];
    }
}

- (void)setFormattingType:(CDVInvokedUrlCommand *)command {
    int index = [[command.arguments objectAtIndex:0] intValue];
    
    Formatting formatting = (Formatting) index;
    
    if (formatting == Disabled || formatting == Automatic || formatting == GS1 || formatting == AAMVA) { // Disabled = 0, Automatic = 1, GS1 = 2, AAMVA = 3
        barkoderView.config.decoderConfig.formatting = formatting;
        
        [self callbackSuccess:command];
    }
}

- (void)setCode11ChecksumType:(CDVInvokedUrlCommand *)command {
    int index = [[command.arguments objectAtIndex:0] intValue];
    
    Code11Checksum code11Checksum = (Code11Checksum) index;
    
    if (code11Checksum == Code11_Checksum_Disabled || code11Checksum == Code11_Checksum_Single || code11Checksum == Code11_Checksum_Double) { // Disabled = 0, Single = 1, Double = 2
        barkoderView.config.decoderConfig.code11.checksum = code11Checksum;
        
        [self callbackSuccess:command];
    }
}

- (void)setMsiChecksumType:(CDVInvokedUrlCommand *)command {
    int index = [[command.arguments objectAtIndex:0] intValue];
    
    MsiChecksum msiChecksum = (MsiChecksum) index;
    
    if (msiChecksum == Msi_Checksum_Disabled ||
        msiChecksum == Msi_Checksum_Mod10 ||
        msiChecksum == Msi_Checksum_Mod11 ||
        msiChecksum == Msi_Checksum_Mod1010 ||
        msiChecksum == Msi_Checksum_Mod1110 ||
        msiChecksum == Msi_Checksum_Mod11IBM ||
        msiChecksum == Msi_Checksum_Mod1110IBM) { // Disabled = 0, Mod10 = 1, Mod11 = 2, Mod1010 = 3, Mod1110 = 4, Mod11IBM = 5, Mod1110IBM = 6
        
        barkoderView.config.decoderConfig.msi.checksum = msiChecksum;
        
        [self callbackSuccess:command];
    }
}

- (void)setCode39ChecksumType:(CDVInvokedUrlCommand *)command {
    int index = [[command.arguments objectAtIndex:0] intValue];
    
    Code39Checksum code39Checksum = (Code39Checksum) index;
    
    if (code39Checksum == Code39_Checksum_Disabled || code39Checksum == Code39_Checksum_Enabled) { // Disabled = 0, Enabled = 1
        barkoderView.config.decoderConfig.code39.checksum = code39Checksum;
        
        [self callbackSuccess:command];
    }
}

- (void)setBarcodeTypeEnabled:(CDVInvokedUrlCommand*)command {
    int typeRawValue = [[command.arguments objectAtIndex:0 ] intValue];
    BOOL enabled = [[command.arguments objectAtIndex:1 ] boolValue];
    
    Config *decoderConfig = barkoderView.config.decoderConfig;
    DecoderType decoderType = (DecoderType) typeRawValue;
    SpecificConfig *specificConfig = [[SpecificConfig alloc] initWithDecoderType:decoderType];
    
    if (!specificConfig) {
        [self callbackErrorMessage:command message:[self barkoderErorrMessage:BARCODE_TYPE_NOT_FOUNDED]];
        return;
    }
    
    switch ([specificConfig decoderType]) {
        case Aztec:
            decoderConfig.aztec.enabled = enabled;
            break;
        case AztecCompact:
            decoderConfig.aztecCompact.enabled = enabled;
            break;
        case QR:
            decoderConfig.qr.enabled = enabled;
            break;
        case QRMicro:
            decoderConfig.qrMicro.enabled = enabled;
            break;
        case Code128:
            decoderConfig.code128.enabled = enabled;
            break;
        case Code93:
            decoderConfig.code93.enabled = enabled;
            break;
        case Code39:
            decoderConfig.code39.enabled = enabled;
            break;
        case Codabar:
            decoderConfig.codabar.enabled = enabled;
            break;
        case Code11:
            decoderConfig.code11.enabled = enabled;
            break;
        case Msi:
            decoderConfig.msi.enabled = enabled;
            break;
        case UpcA:
            decoderConfig.upcA.enabled = enabled;
            break;
        case UpcE:
            decoderConfig.upcE.enabled = enabled;
            break;
        case UpcE1:
            decoderConfig.upcE1.enabled = enabled;
            break;
        case Ean13:
            decoderConfig.ean13.enabled = enabled;
            break;
        case Ean8:
            decoderConfig.ean8.enabled = enabled;
            break;
        case PDF417:
            decoderConfig.PDF417.enabled = enabled;
            break;
        case PDF417Micro:
            decoderConfig.PDF417Micro.enabled = enabled;
            break;
        case Datamatrix:
            decoderConfig.datamatrix.enabled = enabled;
            break;
        case Code25:
            decoderConfig.code25.enabled = enabled;
            break;
        case Interleaved25:
            decoderConfig.interleaved25.enabled = enabled;
            break;
        case ITF14:
            decoderConfig.itf14.enabled = enabled;
            break;
        case IATA25:
            decoderConfig.iata25.enabled = enabled;
            break;
        case Matrix25:
            decoderConfig.matrix25.enabled = enabled;
            break;
        case Datalogic25:
            decoderConfig.datalogic25.enabled = enabled;
            break;
        case COOP25:
            decoderConfig.coop25.enabled = enabled;
            break;
        case Code32:
            decoderConfig.code32.enabled = enabled;
            break;
        case Telepen:
            decoderConfig.telepen.enabled = enabled;
            break;
        case Dotcode:
            decoderConfig.dotcode.enabled = enabled;
        case IDDocument:
            decoderConfig.idDocument.enabled = enabled;
        case Databar14:
            decoderConfig.databar14.enabled = enabled;
        case DatabarLimited:
            decoderConfig.databarLimited.enabled = enabled;
        case DatabarExpanded:
            decoderConfig.databarExpanded.enabled = enabled;
            break;
        default:
            [self callbackErrorMessage:command message:[self barkoderErorrMessage:BARCODE_TYPE_NOT_FOUNDED]];
    }
    
    [self callbackSuccess:command];
}

- (void)setMulticodeCachingEnabled:(CDVInvokedUrlCommand *)command {
    BOOL multicodeCachingEnabled = [[command.arguments objectAtIndex:0] boolValue];
    
    [barkoderView.config setMulticodeCachingEnabled:multicodeCachingEnabled];
    
    [self callbackSuccess:command];
}

- (void)setMulticodeCachingDuration:(CDVInvokedUrlCommand *)command {
    int multicodeCachingDuration = [[command.arguments objectAtIndex:0] intValue];
    
    [barkoderView.config setMulticodeCachingDuration:multicodeCachingDuration];
    
    [self callbackSuccess:command];
}

- (void)setMaximumResultsCount:(CDVInvokedUrlCommand *)command {
    int index = [[command.arguments objectAtIndex:0] intValue];
    
    barkoderView.config.decoderConfig.maximumResultsCount = index;
    
    [self callbackSuccess:command];
}

- (void)setBarcodeThumbnailOnResultEnabled:(CDVInvokedUrlCommand *)command {
    BOOL enabled = [[command.arguments objectAtIndex:0] boolValue];
    
    [barkoderView.config setBarcodeThumbnailOnResult:enabled];
    
    [self callbackSuccess:command];
}

- (void)setDuplicatesDelayMs:(CDVInvokedUrlCommand *)command {
    int index = [[command.arguments objectAtIndex:0] intValue];
    
    barkoderView.config.decoderConfig.duplicatesDelayMs = index;
    
    [self callbackSuccess:command];
}

- (void)setThresholdBetweenDuplicatesScans:(CDVInvokedUrlCommand *)command {
    int thresholdBetweenDuplicatesScans = [[command.arguments objectAtIndex:0] intValue];
    
    barkoderView.config.thresholdBetweenDuplicatesScans = thresholdBetweenDuplicatesScans;
    
    [self callbackSuccess:command];
}

- (void)setUpcEanDeblurEnabled:(CDVInvokedUrlCommand *)command {
    BOOL enabled = [[command.arguments objectAtIndex:0] boolValue];
    
    barkoderView.config.decoderConfig.upcEanDeblur = enabled;
    
    [self callbackSuccess:command];
}

- (void)setMisshaped1DEnabled:(CDVInvokedUrlCommand *)command {
    BOOL enabled = [[command.arguments objectAtIndex:0] boolValue];
    
    barkoderView.config.decoderConfig.enableMisshaped1D = enabled;
    
    [self callbackSuccess:command];
}

- (void)setEnableVINRestrictions:(CDVInvokedUrlCommand *)command {
    BOOL enabled = [[command.arguments objectAtIndex:0] boolValue];
    
    barkoderView.config.decoderConfig.enableVINRestrictions = enabled;
    
    [self callbackSuccess:command];
}

- (void)setDatamatrixDpmModeEnabled:(CDVInvokedUrlCommand *)command {
    BOOL enabled = [[command.arguments objectAtIndex:0] boolValue];
    
    barkoderView.config.decoderConfig.datamatrix.dpmMode = enabled ? 1 : 0;
    
    [self callbackSuccess:command];
}

- (void)setQrDpmModeEnabled:(CDVInvokedUrlCommand *)command {
    BOOL enabled = [[command.arguments objectAtIndex:0] boolValue];
    
    barkoderView.config.decoderConfig.qr.dpmMode = enabled ? 1 : 0;
    
    [self callbackSuccess:command];
}

- (void)setQrMicroDpmModeEnabled:(CDVInvokedUrlCommand *)command {
    BOOL enabled = [[command.arguments objectAtIndex:0] boolValue];
    
    barkoderView.config.decoderConfig.qrMicro.dpmMode = enabled ? 1 : 0;
    
    [self callbackSuccess:command];
}

- (void)configureBarkoder:(CDVInvokedUrlCommand *)command {
    NSMutableDictionary *barkoderConfigAsDictionary = [command.arguments objectAtIndex:0];
    BarkoderConfig *barkoderConfig = barkoderView.config;
    
    NSData *barkoderJsonData;
    
    // Changing values for colors from hexes to decimal values
    // Converting from Dictionary -> Data with utf8 encoding
    @try {
        NSString *colorHexCodeRoiLineColor = barkoderConfigAsDictionary[@"roiLineColor"];
        if (colorHexCodeRoiLineColor) {
            barkoderConfigAsDictionary[@"roiLineColor"] = [self parseColor:colorHexCodeRoiLineColor];
        }
        
        NSString *colorHexCodeLocationLineColor = barkoderConfigAsDictionary[@"locationLineColor"];
        if (colorHexCodeLocationLineColor) {
            barkoderConfigAsDictionary[@"locationLineColor"] = [self parseColor:colorHexCodeLocationLineColor];
        }
        
        NSString *colorHexCodeRoiOverlayBackgroundColor = barkoderConfigAsDictionary[@"roiOverlayBackgroundColor"];
        if (colorHexCodeRoiOverlayBackgroundColor) {
            barkoderConfigAsDictionary[@"roiOverlayBackgroundColor"] = [self parseColor:colorHexCodeRoiOverlayBackgroundColor];
        }

        NSString *colorHexCodeScanningIndicatorColor = barkoderConfigAsDictionary[@"scanningIndicatorColor"];
        if (colorHexCodeScanningIndicatorColor) {
            barkoderConfigAsDictionary[@"scanningIndicatorColor"] = [self parseColor:colorHexCodeScanningIndicatorColor];
        }
        
        NSError *error = nil;
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:barkoderConfigAsDictionary options:NSJSONWritingPrettyPrinted error:&error];
        
        NSString *convertedBarkoderConfigAsString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        
        NSArray *keys = @[@"aztec", @"aztecCompact", @"qr", @"qrMicro", @"code128", @"code93", @"code39", @"codabar", @"code11", @"msi", @"upcA", @"upcE", @"upcE1", @"ean13", @"ean8", @"pdf417", @"pdf417Micro", @"datamatrix", @"code25", @"interleaved25", @"itf14", @"iata25", @"matrix25", @"datalogic25", @"coop25", @"code32", @"telepen", @"dotcode", @"idDocument", @"databar14", @"databarLimited", @"databarExpanded", @"minLength", @"maxLength", @"threadsLimit", @"roiX", @"roiY", @"roiWidth", @"roiHeight"];
        NSArray *values = @[@"Aztec", @"Aztec Compact", @"QR", @"QR Micro", @"Code 128", @"Code 93", @"Code 39", @"Codabar", @"Code 11", @"MSI", @"Upc-A", @"Upc-E", @"Upc-E1", @"Ean-13", @"Ean-8", @"PDF 417", @"PDF 417 Micro", @"Datamatrix", @"Code 25", @"Interleaved 2 of 5", @"ITF 14", @"IATA 25", @"Matrix 25", @"Datalogic 25", @"COOP 25", @"Code 32", @"Telepen", @"Dotcode", @"ID Document", @"Databar 14", @"Databar Limited", @"Databar Expanded", @"minimumLength", @"maximumLength", @"maxThreads", @"roi_x", @"roi_y", @"roi_w", @"roi_h"];
        
        NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
        for (int i = 0; i < keys.count; i++) {
            [dictionary setObject:values[i] forKey:keys[i]];
        }
        
        for (id key in dictionary) {
            convertedBarkoderConfigAsString = [convertedBarkoderConfigAsString stringByReplacingOccurrencesOfString:key withString:dictionary[key] options:NSLiteralSearch range:NSMakeRange(0, [convertedBarkoderConfigAsString length])];
        }
        
        barkoderJsonData = [convertedBarkoderConfigAsString dataUsingEncoding:NSUTF8StringEncoding];
        
    } @catch (NSException *exception) {
        [self callbackErrorMessage:command message:[self barkoderErorrMessage:BARKODER_CONFIG_IS_NOT_VALID]];
        return;
    }
    
    [BarkoderHelper applyConfigSettingsFromJson:barkoderConfig jsonData:barkoderJsonData finished:^(BarkoderConfig * _Nullable config, NSError * _Nullable error) {
        if (error) {
            [self callbackErrorMessage:command message:[self barkoderErorrMessage:BARKODER_CONFIG_IS_NOT_VALID]];
        }  else {
            dispatch_async(dispatch_get_main_queue(), ^{
                barkoderView.config = config;
            });
            [self callbackSuccess:command];
        }
    }];
    
}

- (void)setIdDocumentMasterChecksumEnabled:(CDVInvokedUrlCommand *)command {
  BOOL enabled = [[command.arguments objectAtIndex:0] boolValue];
  
  StandardChecksum masterChecksum = (StandardChecksum) enabled;
  
  if (masterChecksum == Checksum_Enabled || masterChecksum == Checksum_Disabled) {
    
    barkoderView.config.decoderConfig.idDocument.masterChecksum = masterChecksum;
    
    [self callbackSuccess:command];
  }
  
}

- (void)setUPCEexpandToUPCA:(CDVInvokedUrlCommand *)command {
    BOOL enabled = [[command.arguments objectAtIndex:0] boolValue];
    barkoderView.config.decoderConfig.upcE.expandToUPCA = enabled;
    [self callbackSuccess:command];
}

- (void)setUPCE1expandToUPCA:(CDVInvokedUrlCommand *)command {
    BOOL enabled = [[command.arguments objectAtIndex:0] boolValue];
    barkoderView.config.decoderConfig.upcE1.expandToUPCA = enabled;
    [self callbackSuccess:command];
}

- (void)setCustomOption:(CDVInvokedUrlCommand *)command {
    NSString *option = [command.arguments objectAtIndex:0];
    int value = [[command.arguments objectAtIndex:1] intValue];
    [barkoderView.config.decoderConfig setcustomOption:option value:value];
    [self callbackSuccess:command];
}

- (void)setScanningIndicatorColor:(CDVInvokedUrlCommand *)command {
    NSString *hexColor = [command.arguments objectAtIndex:0];
    [barkoderView.config setScanningIndicatorColor:[self colorWithHexString:hexColor command:command]];
    [self callbackSuccess:command];
}

- (void)setScanningIndicatorWidth:(CDVInvokedUrlCommand *)command {
    CGFloat lineWidth = [[command.arguments objectAtIndex:0] floatValue];
    [barkoderView.config setScanningIndicatorWidth:lineWidth];
    [self callbackSuccess:command];
}

- (void)setScanningIndicatorAnimation:(CDVInvokedUrlCommand *)command {
    int animation = [[command.arguments objectAtIndex:0] intValue];
    [barkoderView.config setScanningIndicatorAnimation:animation];
    [self callbackSuccess:command];
}

- (void)setScanningIndicatorAlwaysVisible:(CDVInvokedUrlCommand *)command {
    BOOL alwaysVisible = [[command.arguments objectAtIndex:0] boolValue];
  [barkoderView.config setScanningIndicatorAlwaysVisible:alwaysVisible];
    [self callbackSuccess:command];
}

- (void)setDynamicExposure:(CDVInvokedUrlCommand *)command {
    int dynamicExposure = [[command.arguments objectAtIndex:0] intValue];
    [barkoderView setDynamicExposure:dynamicExposure];
    [self callbackSuccess:command];
}

- (void)setCentricFocusAndExposure:(CDVInvokedUrlCommand *)command {
    BOOL enabled = [[command.arguments objectAtIndex:0] boolValue];
    [barkoderView setCentricFocusAndExposure:enabled];
    [self callbackSuccess:command];
}

- (void)setEnableComposite:(CDVInvokedUrlCommand *)command {
    int enableComposite = [[command.arguments objectAtIndex:0] intValue];
    [barkoderView.config.decoderConfig setEnableComposite:enableComposite];
    [self callbackSuccess:command];
}

- (void)setVideoStabilization:(CDVInvokedUrlCommand *)command {
    BOOL enabled = [[command.arguments objectAtIndex:0] boolValue];
    [barkoderView setVideoStabilization:enabled];
    [self callbackSuccess:command];
}

// MARK: - Getters

- (void)isFlashAvailable:(CDVInvokedUrlCommand *)command {
    [barkoderView isFlashAvailable:^(BOOL flashAvailable) {
        [self callbackSuccessBoolean:command boolean:flashAvailable];
    }];
}

- (void)isCloseSessionOnResultEnabled:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessBoolean:command boolean:[barkoderView.config closeSessionOnResultEnabled]];
}

- (void)isImageResultEnabled:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessBoolean:command boolean:[barkoderView.config imageResultEnabled]];
}

- (void)isLocationInImageResultEnabled:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessBoolean:command boolean:[barkoderView.config locationInImageResultEnabled]];
}

- (void)isLocationInPreviewEnabled:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessBoolean:command boolean:[barkoderView.config locationInPreviewEnabled]];
}

- (void)isPinchToZoomEnabled:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessBoolean:command boolean:[barkoderView.config pinchToZoomEnabled]];
}

- (void)isRegionOfInterestVisible:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessBoolean:command boolean:[barkoderView.config regionOfInterestVisible]];
}

- (void)isBeepOnSuccessEnabled:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessBoolean:command boolean:[barkoderView.config beepOnSuccessEnabled]];
}

- (void)isVibrateOnSuccessEnabled:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessBoolean:command boolean:[barkoderView.config vibrateOnSuccessEnabled]];
}

- (void)getVersion:(CDVInvokedUrlCommand*)command {
    [self callbackSuccessMessage:command message:[iBarkoder GetVersion]];
}

- (void)getLocationLineColorHex:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessMessage:command message:[self colorToHex:[barkoderView.config locationLineColor]]];
}

- (void)getRoiLineColorHex:(CDVInvokedUrlCommand*)command {
    [self callbackSuccessMessage:command message:[self colorToHex:[barkoderView.config roiLineColor]]];
}

- (void)getRoiOverlayBackgroundColorHex:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessMessage:command message:[self colorToHex:[barkoderView.config roiOverlayBackgroundColor]]];
}

- (void)getMaxZoomFactor:(CDVInvokedUrlCommand *)command {
    [barkoderView getMaxZoomFactor:^(float maxZoomFactor) {
        [self callbackSuccessDouble:command value:maxZoomFactor];
    }];
}

- (void)getLocationLineWidth:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessDouble:command value:[barkoderView.config locationLineWidth]];
}

- (void)getRoiLineWidth:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessDouble:command value:[barkoderView.config roiLineWidth]];
}

- (void)getRegionOfInterest:(CDVInvokedUrlCommand *)command {
    CGRect roi = [barkoderView.config getRegionOfInterest];
    
    if (CGRectIsNull(roi)) {
        [self callbackErrorMessage:command message:[self barkoderErorrMessage:BARKODER_CONFIG_IS_NOT_VALID]];
        return;
    }
    
    NSString *roiString = [NSString stringWithFormat:@"%.02f, %.02f, %.02f, %.02f", roi.origin.x, roi.origin.y, roi.size.width, roi.size.height];
    
    
    [self callbackSuccessMessage:command message:roiString];
}

- (void)getBarcodeTypeLengthRange:(CDVInvokedUrlCommand *)command {
    int typeRawValue = [[command.arguments objectAtIndex:0 ] intValue];
    
    Config *decoderConfig = barkoderView.config.decoderConfig;
    DecoderType decoderType = (DecoderType) typeRawValue;
    SpecificConfig *specificConfig = [[SpecificConfig alloc] initWithDecoderType:decoderType];
    
    if (!specificConfig) {
        [self callbackErrorMessage:command message:[self barkoderErorrMessage:BARCODE_TYPE_NOT_FOUNDED]];
        return;
    }
    
    switch ([specificConfig decoderType]) {
        case Code128:
            [self callbackSuccessMessage:command message:[NSString stringWithFormat:@"%d, %d", decoderConfig.code128.minimumLength, decoderConfig.code128.maximumLength]];
        case Code93:
            [self callbackSuccessMessage:command message:[NSString stringWithFormat:@"%d, %d", decoderConfig.code93.minimumLength, decoderConfig.code93.maximumLength]];
        case Code39:
            [self callbackSuccessMessage:command message:[NSString stringWithFormat:@"%d, %d", decoderConfig.code39.minimumLength, decoderConfig.code39.maximumLength]];
        case Code11:
            [self callbackSuccessMessage:command message:[NSString stringWithFormat:@"%d, %d", decoderConfig.code11.minimumLength, decoderConfig.code11.maximumLength]];
        case Msi:
            [self callbackSuccessMessage:command message:[NSString stringWithFormat:@"%d, %d", decoderConfig.msi.minimumLength, decoderConfig.msi.maximumLength]];
        case Codabar:
            [self callbackSuccessMessage:command message:[NSString stringWithFormat:@"%d, %d", decoderConfig.codabar.minimumLength, decoderConfig.codabar.maximumLength]];
        default:
            [self callbackErrorMessage:command message:[self barkoderErorrMessage:BARCODE_TYPE_NOT_SUPPORTED]];
    }
}

- (void)getMsiChecksumType:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessInt:command value:(int)barkoderView.config.decoderConfig.msi.checksum];
}

- (void)getCode39ChecksumType:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessInt:command value:(int)barkoderView.config.decoderConfig.code39.checksum];
}

- (void)getCode11ChecksumType:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessInt:command value:(int)barkoderView.config.decoderConfig.code11.checksum];
}

- (void)getEncodingCharacterSet:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessMessage:command message:barkoderView.config.decoderConfig.encodingCharacterSet];
}

- (void)getDecodingSpeed:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessInt:command value:(int)barkoderView.config.decoderConfig.decodingSpeed];
}

- (void)getFormattingType:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessInt:command value:(int)barkoderView.config.decoderConfig.formatting];
}

- (void)getThreadsLimit:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessInt:command value:(int)[barkoderView.config getThreadsLimit]];
}

- (void)getMaximumResultsCount:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessInt:command value:barkoderView.config.decoderConfig.maximumResultsCount];
}

- (void)getDuplicatesDelayMs:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessInt:command value:barkoderView.config.decoderConfig.duplicatesDelayMs];
}

- (void)isBarcodeTypeEnabled:(CDVInvokedUrlCommand *)command {
    int typeRawValue = [[command.arguments objectAtIndex:0 ] intValue];
    
    Config *decoderConfig = barkoderView.config.decoderConfig;
    DecoderType decoderType = (DecoderType) typeRawValue;
    SpecificConfig *specificConfig = [[SpecificConfig alloc] initWithDecoderType:decoderType];
    
    if (!specificConfig) {
        [self callbackErrorMessage:command message:[self barkoderErorrMessage:BARCODE_TYPE_NOT_FOUNDED]];
        return;
    }
    
    switch ([specificConfig decoderType]) {
        case Aztec:
            [self callbackSuccessBoolean:command boolean:decoderConfig.aztec.enabled];
            break;
        case AztecCompact:
            [self callbackSuccessBoolean:command boolean:decoderConfig.aztecCompact.enabled];
            break;
        case QR:
            [self callbackSuccessBoolean:command boolean:decoderConfig.qr.enabled];
            break;
        case QRMicro:
            [self callbackSuccessBoolean:command boolean:decoderConfig.qrMicro.enabled];
            break;
        case Code128:
            [self callbackSuccessBoolean:command boolean:decoderConfig.code128.enabled];
            break;
        case Code93:
            [self callbackSuccessBoolean:command boolean:decoderConfig.code93.enabled];
            break;
        case Code39:
            [self callbackSuccessBoolean:command boolean:decoderConfig.code39.enabled];
            break;
        case Codabar:
            [self callbackSuccessBoolean:command boolean:decoderConfig.codabar.enabled];
            break;
        case Code11:
            [self callbackSuccessBoolean:command boolean:decoderConfig.code11.enabled];
            break;
        case Msi:
            [self callbackSuccessBoolean:command boolean:decoderConfig.msi.enabled];
            break;
        case UpcA:
            [self callbackSuccessBoolean:command boolean:decoderConfig.upcA.enabled];
            break;
        case UpcE:
            [self callbackSuccessBoolean:command boolean:decoderConfig.upcE.enabled];
            break;
        case UpcE1:
            [self callbackSuccessBoolean:command boolean:decoderConfig.upcE1.enabled];
            break;
        case Ean13:
            [self callbackSuccessBoolean:command boolean:decoderConfig.ean13.enabled];
            break;
        case Ean8:
            [self callbackSuccessBoolean:command boolean:decoderConfig.ean8.enabled];
            break;
        case PDF417:
            [self callbackSuccessBoolean:command boolean:decoderConfig.PDF417.enabled];
            break;
        case PDF417Micro:
            [self callbackSuccessBoolean:command boolean:decoderConfig.PDF417Micro.enabled];
            break;
        case Datamatrix:
            [self callbackSuccessBoolean:command boolean:decoderConfig.datamatrix.enabled];
            break;
        case Code25:
            [self callbackSuccessBoolean:command boolean:decoderConfig.code25.enabled];
            break;
        case Interleaved25:
            [self callbackSuccessBoolean:command boolean:decoderConfig.interleaved25.enabled];
            break;
        case ITF14:
            [self callbackSuccessBoolean:command boolean:decoderConfig.itf14.enabled];
            break;
        case IATA25:
            [self callbackSuccessBoolean:command boolean:decoderConfig.iata25.enabled];
            break;
        case Matrix25:
            [self callbackSuccessBoolean:command boolean:decoderConfig.matrix25.enabled];
            break;
        case Datalogic25:
            [self callbackSuccessBoolean:command boolean:decoderConfig.datalogic25.enabled];
            break;
        case COOP25:
            [self callbackSuccessBoolean:command boolean:decoderConfig.coop25.enabled];
            break;
        case Code32:
            [self callbackSuccessBoolean:command boolean:decoderConfig.code32.enabled];
            break;
        case Telepen:
            [self callbackSuccessBoolean:command boolean:decoderConfig.telepen.enabled];
            break;
        case Dotcode:
            [self callbackSuccessBoolean:command boolean:decoderConfig.dotcode.enabled];
            break;
        case IDDocument:
            [self callbackSuccessBoolean:command boolean:decoderConfig.idDocument.enabled];
            break;
        case Databar14:
            [self callbackSuccessBoolean:command boolean:decoderConfig.databar14.enabled];
          break;
        case DatabarLimited:
            [self callbackSuccessBoolean:command boolean:decoderConfig.databarLimited.enabled];
          break;
        case DatabarExpanded:
            [self callbackSuccessBoolean:command boolean:decoderConfig.databarExpanded.enabled];
          break;
        default:
            [self callbackErrorMessage:command message:[self barkoderErorrMessage:BARCODE_TYPE_NOT_FOUNDED]];
    }
}

- (void)getMulticodeCachingEnabled:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessBoolean:command boolean:[barkoderView.config getMulticodeCachingEnabled]];
}

- (void)getMulticodeCachingDuration:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessInt:command value:(int)[barkoderView.config getMulticodeCachingDuration]];
}

- (void)isUpcEanDeblurEnabled:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessBoolean:command boolean:[barkoderView.config.decoderConfig upcEanDeblur]];
}

- (void)isMisshaped1DEnabled:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessBoolean:command boolean:[barkoderView.config.decoderConfig enableMisshaped1D]];
}

- (void)isBarcodeThumbnailOnResultEnabled:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessBoolean:command boolean:[barkoderView.config barcodeThumbnailOnResult]];
}

- (void)getThresholdBetweenDuplicatesScans:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessInt:command value:(int)[barkoderView.config thresholdBetweenDuplicatesScans]];
}

- (void)isVINRestrictionsEnabled:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessBoolean:command boolean:[barkoderView.config.decoderConfig enableVINRestrictions]];
}

- (void)getBarkoderResolution:(CDVInvokedUrlCommand *)command {
    [self callbackSuccessInt:command value:(int)[barkoderView.config barkoderResolution]];
}

- (void)isDatamatrixDpmModeEnabled:(CDVInvokedUrlCommand *)command {
    BOOL isEnabled = (barkoderView.config.decoderConfig.datamatrix.dpmMode != 0);
    [self callbackSuccessBoolean:command boolean:isEnabled];
}

- (void)isQrDpmModeEnabled:(CDVInvokedUrlCommand *)command {
    BOOL isEnabled = (barkoderView.config.decoderConfig.qr.dpmMode != 0);
    [self callbackSuccessBoolean:command boolean:isEnabled];
}

- (void)isQrMicroDpmModeEnabled:(CDVInvokedUrlCommand *)command {
    BOOL isEnabled = (barkoderView.config.decoderConfig.qrMicro.dpmMode != 0);
    [self callbackSuccessBoolean:command boolean:isEnabled];
}

- (void)isIdDocumentMasterChecksumEnabled:(CDVInvokedUrlCommand *)command {
    BOOL isEnabled = (barkoderView.config.decoderConfig.idDocument.masterChecksum == 1);
    [self callbackSuccessBoolean:command boolean:isEnabled];
}

- (void)getScanningIndicatorColorHex:(CDVInvokedUrlCommand *)command {
  [self callbackSuccessMessage:command message:[self colorToHex:[barkoderView.config scanningIndicatorColor]]];
}

- (void)getScanningIndicatorWidth:(CDVInvokedUrlCommand *)command {
  [self callbackSuccessDouble:command value:[barkoderView.config scanningIndicatorWidth]];
}

- (void)getScanningIndicatorAnimation:(CDVInvokedUrlCommand *)command {
  [self callbackSuccessInt:command value:(int)[barkoderView.config scanningIndicatorAnimation]];
}

- (void)isScanningIndicatorAlwaysVisible:(CDVInvokedUrlCommand *)command {
  [self callbackSuccessBoolean:command boolean:[barkoderView.config scanningIndicatorAlwaysVisible]];
}


//MARK: BarkoderUtil

- (NSDictionary *)barkoderResultsToJson:(NSArray<DecoderResult *> * _Nonnull)decoderResults
                             thumbnails:(NSArray<UIImage *> * _Nullable)thumbnails
                                  image:(UIImage * _Nullable)image {
  NSMutableArray *resultsJsonArray = [NSMutableArray array];
  
  // Process each decoder result separately
  for (DecoderResult *decoderResult in decoderResults) {
    NSMutableDictionary *resultJson = [NSMutableDictionary dictionary];
    
    resultJson[@"barcodeType"] = @(decoderResult.barcodeType);
    resultJson[@"barcodeTypeName"] = decoderResult.barcodeTypeName ?: [NSNull null];
    resultJson[@"binaryDataAsBase64"] = [decoderResult.binaryData base64EncodedStringWithOptions:0];
    resultJson[@"textualData"] = decoderResult.textualData ?: [NSNull null];
    resultJson[@"characterSet"] = decoderResult.characterSet ?: [NSNull null];
    
    if ([decoderResult.extra isKindOfClass:[NSDictionary class]]) {
      NSDictionary *extraAsDictionary = (NSDictionary *)decoderResult.extra;
      if (extraAsDictionary.count > 0) {
        NSError *error = nil;
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:extraAsDictionary options:0 error:&error];
        if (jsonData && !error) {
          NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
          resultJson[@"extra"] = jsonString;
        }
      }
    }
    
    // Add MRZ images if barcodeTypeName is "MRZ"
    if ([decoderResult.barcodeTypeName isEqualToString:@"MRZ"]) {
      if (decoderResult.images) {
        NSMutableArray *mrzImagesArray = [NSMutableArray array];
        
        for (BKImageDescriptor *imageObject in decoderResult.images) {
          if (imageObject.name && imageObject.image) {
            NSData *imageData = UIImagePNGRepresentation(imageObject.image);
            if (imageData) {
              NSDictionary *imageInfo = @{
                @"name": imageObject.name,
                @"base64": [imageData base64EncodedStringWithOptions:0]
              };
              [mrzImagesArray addObject:imageInfo];
            }
          }
        }
        resultJson[@"mrzImagesAsBase64"] = mrzImagesArray;
      }
    }
    
    [resultsJsonArray addObject:resultJson];
  }
  
  // Prepare the final JSON result
  NSMutableDictionary *barkoderResultJson = [NSMutableDictionary dictionary];
  barkoderResultJson[@"decoderResults"] = resultsJsonArray;
  
  // Add thumbnails if present
  if (thumbnails.count > 0) {
    NSMutableArray *thumbnailsBase64Array = [NSMutableArray array];
    for (UIImage *thumbnail in thumbnails) {
      NSData *thumbnailData = UIImagePNGRepresentation(thumbnail);
      if (thumbnailData) {
        [thumbnailsBase64Array addObject:[thumbnailData base64EncodedStringWithOptions:0]];
      }
    }
    barkoderResultJson[@"resultThumbnailsAsBase64"] = thumbnailsBase64Array;
  }
  
  // Add main image if present
  if (image) {
    NSData *imageData = UIImagePNGRepresentation(image);
    if (imageData) {
      barkoderResultJson[@"resultImageAsBase64"] = [imageData base64EncodedStringWithOptions:0];
    }
  }
  
  return barkoderResultJson;
}

- (nullable NSNumber *)parseColor:(NSString *)hexColor {
    NSString *cleanedHexColor = [hexColor stringByReplacingOccurrencesOfString:@"#" withString:@""];
    NSString *argbHexColor = [@"FF" stringByAppendingString:cleanedHexColor];
    return [NSNumber numberWithUnsignedInteger:strtol([argbHexColor UTF8String], NULL, 16)];
}

- (UIColor *)colorWithHexString:(NSString *)hexString command:(CDVInvokedUrlCommand*)command {
    NSString *hex = [[hexString stringByReplacingOccurrencesOfString:@"#" withString:@""] stringByTrimmingCharactersInSet:[NSCharacterSet alphanumericCharacterSet].invertedSet];
    NSScanner *scanner = [NSScanner scannerWithString:hex];
    unsigned long long intVal;
    [scanner scanHexLongLong:&intVal];
    
    unsigned long long a, r, g, b;
    switch (hex.length) {
        case 3: // RGB (12-bit)
            a = 255;
            r = (intVal >> 8) * 17;
            g = (intVal >> 4 & 0xF) * 17;
            b = (intVal & 0xF) * 17;
            break;
        case 6: // RGB (24-bit)
            a = 255;
            r = intVal >> 16;
            g = (intVal >> 8) & 0xFF;
            b = intVal & 0xFF;
            break;
        case 8: // ARGB (32-bit)
            a = intVal >> 24;
            r = (intVal >> 16) & 0xFF;
            g = (intVal >> 8) & 0xFF;
            b = intVal & 0xFF;
            break;
        default:
            [self callbackErrorMessage:command message:[self barkoderErorrMessage:COLOR_NOT_SET]];
            // Adding default colors
            a = 255;
            r = 0;
            g = 0;
            b = 0;
            break;
    }
    
    return [UIColor colorWithRed:(CGFloat)r / 255.0 green:(CGFloat)g / 255.0 blue:(CGFloat)b / 255.0 alpha:(CGFloat)a / 255.0];
}

- (NSString *)colorToHex:(UIColor *)color {
    // Get the color components from cgColor
    const CGFloat *components = CGColorGetComponents(color.CGColor);
    
    if (components == NULL) {
        return nil;
    }
    
    // Extract red, green, and blue components
    CGFloat red = components[0];
    CGFloat green = components[1];
    CGFloat blue = components[2];
    
    // Convert the components to hex string
    NSString *hexString = [NSString stringWithFormat:@"%02lX%02lX%02lX",
                           lroundf(red * 255),
                           lroundf(green * 255),
                           lroundf(blue * 255)];
    
    return hexString;
}


// MARK: BarkoderErrors

- (NSString *)barkoderErrorCode:(BarkoderErrors)error {
    switch (error) {
        case BARKODER_VIEW_DESTROYED:
            return @"1";
        case INVALID_RESOLUTION:
            return @"2";
        case THREADS_LIMIT_NOT_SET:
            return @"3";
        case ROI_NOT_SET:
            return @"4";
        case COLOR_NOT_SET:
            return @"5";
        case BARCODE_TYPE_NOT_FOUNDED:
            return @"6";
        case BARCODE_TYPE_NOT_SUPPORTED:
            return @"7";
        case DECODING_SPEED_NOT_FOUNDED:
            return @"8";
        case FORMATTING_TYPE_NOT_FOUNDED:
            return @"9";
        case LENGTH_RANGE_NOT_VALID:
            return @"10";
        case CHECKSUM_TYPE_NOT_FOUNDED:
            return @"11";
        case BARKODER_CONFIG_IS_NOT_VALID:
            return @"12";
    }
}

- (NSString *)barkoderErorrMessage:(BarkoderErrors)error {
    switch (error) {
        case BARKODER_VIEW_DESTROYED:
            return @"BarkoderView is destroyed.";
        case INVALID_RESOLUTION:
            return @"Invalid resolution.";
        case THREADS_LIMIT_NOT_SET:
            return @"Threads limit is not set.";
        case ROI_NOT_SET:
            return @"Region Of Interest is not set.";
        case COLOR_NOT_SET:
            return @"Color is not set.";
        case BARCODE_TYPE_NOT_FOUNDED:
            return @"Barcode type can't be founded.";
        case BARCODE_TYPE_NOT_SUPPORTED:
            return @"Barcode type is not supported.";
        case DECODING_SPEED_NOT_FOUNDED:
            return @"Decoding speed value can't be founded.";
        case FORMATTING_TYPE_NOT_FOUNDED:
            return @"Formatting type can't be founded.";
        case LENGTH_RANGE_NOT_VALID:
            return @"Length range is not valid. Min must be > 0 and max must be >= min.";
        case CHECKSUM_TYPE_NOT_FOUNDED:
            return @"Checksum type can't be founded.";
        case BARKODER_CONFIG_IS_NOT_VALID:
            return @"";
    }
}

@end
