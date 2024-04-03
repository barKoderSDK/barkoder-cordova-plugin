var exec = require('cordova/exec');

var barkoderScanner = "BarkoderScanner";

  // - Initialize the BarkoderView

exports.initialize = function (width, height, x, y, success, error) {
    exec(success, error, barkoderScanner, 'initialize', [width, height, x, y]);
};

  // - Register with license key

exports.registerWithLicenseKey = function (licenseKey, success, error) {
    exec(success, error, barkoderScanner, 'registerWithLicenseKey', [licenseKey]);
};

  // - Setters

exports.setZoomFactor = function (zoomFactor, success, error) {
    exec(success, error, barkoderScanner, 'setZoomFactor', [zoomFactor]);
};

exports.setFlashEnabled = function (enabled, success, error) {
    exec(success, error, barkoderScanner, 'setFlashEnabled', [enabled]);
};

exports.startCamera = function (success, error) {
    exec(success, error, barkoderScanner, 'startCamera', []);
};

exports.startScanning = function (success, error) {
    exec(success, error, barkoderScanner, 'startScanning', []);
};

exports.stopScanning = function (success, error) {
    exec(success, error, barkoderScanner, 'stopScanning', []);
};

exports.pauseScanning = function (success, error) {
    exec(success, error, barkoderScanner, 'pauseScanning', []);
};

exports.setLocationLineColor = function (hexColor, success, error) {
    exec(success, error, barkoderScanner, 'setLocationLineColor', [hexColor]);
};

exports.setLocationLineWidth = function (lineWidth, success, error) {
    exec(success, error, barkoderScanner, 'setLocationLineWidth', [lineWidth]);
};

exports.setRoiLineColor = function (hexColor, success, error) {
    exec(success, error, barkoderScanner, 'setRoiLineColor', [hexColor]);
};

exports.setRoiLineWidth = function (lineWidth, success, error) {
    exec(success, error, barkoderScanner, 'setRoiLineWidth', [lineWidth]);
};

exports.setRoiOverlayBackgroundColor = function (hexColor, success, error) {
    exec(success, error, barkoderScanner, 'setRoiOverlayBackgroundColor', [hexColor]);
};

exports.setCloseSessionOnResultEnabled = function (enabled, success, error) {
    exec(success, error, barkoderScanner, 'setCloseSessionOnResultEnabled', [enabled]);
};

exports.setImageResultEnabled = function (enabled, success, error) {
    exec(success, error, barkoderScanner, 'setImageResultEnabled', [enabled]);
};

exports.setLocationInImageResultEnabled = function (enabled, success, error) {
    exec(success, error, barkoderScanner, 'setLocationInImageResultEnabled', [enabled]);
};

exports.setRegionOfInterest = function (left, top, width, height, success, error) {
    exec(success, error, barkoderScanner, 'setRegionOfInterest', [left, top, width, height]);
};

exports.setThreadsLimit = function (threadsLimit, success, error) {
    exec(success, error, barkoderScanner, 'setThreadsLimit', [threadsLimit]);
};

exports.setLocationInPreviewEnabled = function (enabled, success, error) {
    exec(success, error, barkoderScanner, 'setLocationInPreviewEnabled', [enabled]);
};

exports.setPinchToZoomEnabled = function (enabled, success, error) {
    exec(success, error, barkoderScanner, 'setPinchToZoomEnabled', [enabled]);
};

exports.setRegionOfInterestVisible = function (regionOfInterestVisible, success, error) {
    exec(success, error, barkoderScanner, 'setRegionOfInterestVisible', [regionOfInterestVisible]);
};

exports.setBarkoderResolution = function (resolution, success, error) {
    exec(success, error, barkoderScanner, 'setBarkoderResolution', [resolution]);
};

exports.setBeepOnSuccessEnabled = function (enabled, success, error) {
    exec(success, error, barkoderScanner, 'setBeepOnSuccessEnabled', [enabled]);
};

exports.setVibrateOnSuccessEnabled = function (enabled, success, error) {
    exec(success, error, barkoderScanner, 'setVibrateOnSuccessEnabled', [enabled]);
};

exports.showLogMessages = function (showLogMessages, success, error) {
    exec(success, error, barkoderScanner, 'showLogMessages', [showLogMessages]);
};

exports.setBarcodeTypeLengthRange = function (type, min, max, success, error) {
    exec(success, error, barkoderScanner, 'setBarcodeTypeLengthRange', [type, min, max]);
};

exports.setEncodingCharacterSet = function (characterSet, success, error) {
    exec(success, error, barkoderScanner, 'setEncodingCharacterSet', [characterSet]);
};

exports.setDecodingSpeed = function (decodingSpeed, success, error) {
    exec(success, error, barkoderScanner, 'setDecodingSpeed', [decodingSpeed]);
};

exports.setFormattingType = function (formattingType, success, error) {
    exec(success, error, barkoderScanner, 'setFormattingType', [formattingType]);
};

exports.setCode11ChecksumType = function (checksumType, success, error) {
    exec(success, error, barkoderScanner, 'setCode11ChecksumType', [checksumType]);
};

exports.setMsiChecksumType = function (checksumType, success, error) {
    exec(success, error, barkoderScanner, 'setMsiChecksumType', [checksumType]);
};

exports.setCode39ChecksumType = function (checksumType, success, error) {
    exec(success, error, barkoderScanner, 'setCode39ChecksumType', [checksumType]);
};

exports.setBarcodeTypeEnabled = function (type, enabled, success, error) {
    exec(success, error, barkoderScanner, 'setBarcodeTypeEnabled', [type, enabled]);
};

exports.setMulticodeCachingEnabled = function (enabled, success, error) {
    exec(success, error, barkoderScanner, 'setMulticodeCachingEnabled', [enabled]);
};

exports.setMulticodeCachingDuration = function (duration, success, error) {
    exec(success, error, barkoderScanner, 'setMulticodeCachingDuration', [duration]);
};

exports.setMaximumResultsCount = function (resultsCount, success, error) {
    exec(success, error, barkoderScanner, 'setMaximumResultsCount', [resultsCount]);
};

exports.setBarcodeThumbnailOnResultEnabled = function (enabled, success, error) {
    exec(success, error, barkoderScanner, 'setBarcodeThumbnailOnResultEnabled', [enabled]);
};

exports.setDuplicatesDelayMs = function (delayMs, success, error) {
    exec(success, error, barkoderScanner, 'setDuplicatesDelayMs', [delayMs]);
};

exports.setThresholdBetweenDuplicatesScans = function (thresholdBetweenDuplicatesScans, success, error) {
    exec(success, error, barkoderScanner, 'setThresholdBetweenDuplicatesScans', [thresholdBetweenDuplicatesScans]);
};

exports.setUpcEanDeblurEnabled = function (enabled, success, error) {
    exec(success, error, barkoderScanner, 'setUpcEanDeblurEnabled', [enabled]);
};

exports.setMisshaped1DEnabled = function (enabled, success, error) {
    exec(success, error, barkoderScanner, 'setMisshaped1DEnabled', [enabled]);
};

exports.setEnableVINRestrictions = function (enableVINRestrictions, success, error) {
    exec(success, error, barkoderScanner, 'setEnableVINRestrictions', [enableVINRestrictions]);
};

  // - Getters

exports.isFlashAvailable = function (success, error) {
    exec(success, error, barkoderScanner, 'isFlashAvailable', []);
};

exports.isCloseSessionOnResultEnabled = function (success, error) {
    exec(success, error, barkoderScanner, 'isCloseSessionOnResultEnabled', []);
};

exports.isImageResultEnabled = function (success, error) {
    exec(success, error, barkoderScanner, 'isImageResultEnabled', []);
};

exports.isLocationInImageResultEnabled = function (success, error) {
    exec(success, error, barkoderScanner, 'isLocationInImageResultEnabled', []);
};

exports.isLocationInPreviewEnabled = function (success, error) {
    exec(success, error, barkoderScanner, 'isLocationInPreviewEnabled', []);
};

exports.isPinchToZoomEnabled = function (success, error) {
    exec(success, error, barkoderScanner, 'isPinchToZoomEnabled', []);
};

exports.isRegionOfInterestVisible = function (success, error) {
    exec(success, error, barkoderScanner, 'isRegionOfInterestVisible', []);
};

exports.isBeepOnSuccessEnabled = function (success, error) {
    exec(success, error, barkoderScanner, 'isBeepOnSuccessEnabled', []);
};

exports.isVibrateOnSuccessEnabled = function (success, error) {
    exec(success, error, barkoderScanner, 'isVibrateOnSuccessEnabled', []);
};

exports.getVersion = function (success, error) {
    exec(success, error, barkoderScanner, 'getVersion', []);
};

exports.getLocationLineColorHex = function (success, error) {
    exec(success, error, barkoderScanner, 'getLocationLineColorHex', []);
};

exports.getRoiLineColorHex = function (success, error) {
    exec(success, error, barkoderScanner, 'getRoiLineColorHex', []);
};

exports.getRoiOverlayBackgroundColorHex = function (success, error) {
    exec(success, error, barkoderScanner, 'getRoiOverlayBackgroundColorHex', []);
};

exports.getMaxZoomFactor = function (success, error) {
    exec(success, error, barkoderScanner, 'getMaxZoomFactor', []);
};

exports.getLocationLineWidth = function (success, error) {
    exec(success, error, barkoderScanner, 'getLocationLineWidth', []);
};

exports.getRoiLineWidth = function (success, error) {
    exec(success, error, barkoderScanner, 'getRoiLineWidth', []);
};

exports.getRegionOfInterest = function (success, error) {
    exec(success, error, barkoderScanner, 'getRegionOfInterest', []);
};

exports.getBarcodeTypeLengthRange = function (type, success, error) {
    exec(success, error, barkoderScanner, 'getBarcodeTypeLengthRange', [type]);
};

exports.getMsiChecksumType = function (success, error) {
    exec(success, error, barkoderScanner, 'getMsiChecksumType', []);
};

exports.getCode39ChecksumType = function (success, error) {
    exec(success, error, barkoderScanner, 'getCode39ChecksumType', []);
};

exports.getCode11ChecksumType = function (success, error) {
    exec(success, error, barkoderScanner, 'getCode11ChecksumType', []);
};

exports.getEncodingCharacterSet = function (success, error) {
    exec(success, error, barkoderScanner, 'getEncodingCharacterSet', []);
};

exports.getDecodingSpeed = function (success, error) {
    exec(success, error, barkoderScanner, 'getDecodingSpeed', []);
};

exports.getFormattingType = function (success, error) {
    exec(success, error, barkoderScanner, 'getFormattingType', []);
};

exports.getThreadsLimit = function (success, error) {
    exec(success, error, barkoderScanner, 'getThreadsLimit', []);
};

exports.getMaximumResultsCount = function (success, error) {
    exec(success, error, barkoderScanner, 'getMaximumResultsCount', []);
};

exports.getDuplicatesDelayMs = function (success, error) {
    exec(success, error, barkoderScanner, 'getDuplicatesDelayMs', []);
};

exports.isBarcodeTypeEnabled = function (type, success, error) {
    exec(success, error, barkoderScanner, 'isBarcodeTypeEnabled', [type]);
};

exports.getMulticodeCachingEnabled = function (success, error) {
    exec(success, error, barkoderScanner, 'getMulticodeCachingEnabled', []);
};

exports.getMulticodeCachingDuration = function (success, error) {
    exec(success, error, barkoderScanner, 'getMulticodeCachingDuration', []);
};

exports.isUpcEanDeblurEnabled = function (success, error) {
    exec(success, error, barkoderScanner, 'isUpcEanDeblurEnabled', []);
};

exports.isMisshaped1DEnabled = function (success, error) {
    exec(success, error, barkoderScanner, 'isMisshaped1DEnabled', []);
};

exports.isBarcodeThumbnailOnResultEnabled = function (success, error) {
    exec(success, error, barkoderScanner, 'isBarcodeThumbnailOnResultEnabled', []);
};

exports.getThresholdBetweenDuplicatesScans = function (success, error) {
    exec(success, error, barkoderScanner, 'getThresholdBetweenDuplicatesScans', []);
};

exports.isVINRestrictionsEnabled = function (success, error) {
    exec(success, error, barkoderScanner, 'isVINRestrictionsEnabled', []);
};