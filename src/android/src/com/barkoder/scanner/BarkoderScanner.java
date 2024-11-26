package com.barkoder.scanner;

import static android.content.ContentValues.TAG;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;
import org.apache.cordova.PluginResult;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

import com.barkoder.Barkoder;
import com.barkoder.BarkoderConfig;
import com.barkoder.BarkoderLog;
import com.barkoder.BarkoderView;

import com.barkoder.BarkoderHelper;
import com.barkoder.enums.BarkoderResolution;
import com.barkoder.interfaces.BarkoderResultCallback;

import java.util.Arrays;
import java.util.Map;
import java.util.HashMap;

/**
 * This class echoes a string called from JavaScript.
 */
public class BarkoderScanner extends CordovaPlugin implements BarkoderResultCallback {

  private CallbackContext resultCallbackContext;
  private BarkoderView barkoderView;
  Integer barkoderViewParentId;
  String licenseKey = "";

  @Override
  public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {

    if (action.equals("initialize")) {
      this.initialize(args, callbackContext);
      return true;
    }
    if (action.equals("registerWithLicenseKey")) {
      this.registerWithLicenseKey(args, callbackContext);
      return true;
    }
    if (action.equals("setZoomFactor")) {
      this.setZoomFactor(args, callbackContext);
      return true;
    }
    if (action.equals("setFlashEnabled")) {
      this.setFlashEnabled(args, callbackContext);
      return true;
    }
    if (action.equals("startCamera")) {
      this.startCamera(callbackContext);
      return true;
    }
    if (action.equals("startScanning")) {
      resultCallbackContext = callbackContext;
      this.startScanning(callbackContext);
      return true;
    }
    if (action.equals("stopScanning")) {
      this.stopScanning(callbackContext);
      return true;
    }
    if (action.equals("pauseScanning")) {
      this.pauseScanning(callbackContext);
      return true;
    }
    if (action.equals("scanImage")) {
      resultCallbackContext = callbackContext;
      this.scanImage(args, callbackContext);
      return true;
    }
    if (action.equals("setLocationLineColor")) {
      this.setLocationLineColor(args, callbackContext);
      return true;
    }
    if (action.equals("setLocationLineWidth")) {
      this.setLocationLineWidth(args, callbackContext);
      return true;
    }
    if (action.equals("setRoiLineColor")) {
      this.setRoiLineColor(args, callbackContext);
      return true;
    }
    if (action.equals("setRoiLineWidth")) {
      this.setRoiLineWidth(args, callbackContext);
      return true;
    }
    if (action.equals("setRoiOverlayBackgroundColor")) {
      this.setRoiOverlayBackgroundColor(args, callbackContext);
      return true;
    }
    if (action.equals("setCloseSessionOnResultEnabled")) {
      this.setCloseSessionOnResultEnabled(args, callbackContext);
      return true;
    }
    if (action.equals("setImageResultEnabled")) {
      this.setImageResultEnabled(args, callbackContext);
      return true;
    }
    if (action.equals("setLocationInImageResultEnabled")) {
      this.setLocationInImageResultEnabled(args, callbackContext);
      return true;
    }
    if (action.equals("setRegionOfInterest")) {
      this.setRegionOfInterest(args, callbackContext);
      return true;
    }
    if (action.equals("setThreadsLimit")) {
      this.setThreadsLimit(args, callbackContext);
      return true;
    }
    if (action.equals("setLocationInPreviewEnabled")) {
      this.setLocationInPreviewEnabled(args, callbackContext);
      return true;
    }
    if (action.equals("setPinchToZoomEnabled")) {
      this.setPinchToZoomEnabled(args, callbackContext);
      return true;
    }
    if (action.equals("setRegionOfInterestVisible")) {
      this.setRegionOfInterestVisible(args, callbackContext);
      return true;
    }
    if (action.equals("setBarkoderResolution")) {
      this.setBarkoderResolution(args, callbackContext);
      return true;
    }
    if (action.equals("setBeepOnSuccessEnabled")) {
      this.setBeepOnSuccessEnabled(args, callbackContext);
      return true;
    }
    if (action.equals("setVibrateOnSuccessEnabled")) {
      this.setVibrateOnSuccessEnabled(args, callbackContext);
      return true;
    }
    if (action.equals("showLogMessages")) {
      this.showLogMessages(args, callbackContext);
      return true;
    }
    if (action.equals("setBarcodeTypeLengthRange")) {
      this.setBarcodeTypeLengthRange(args, callbackContext);
      return true;
    }
    if (action.equals("setEncodingCharacterSet")) {
      this.setEncodingCharacterSet(args, callbackContext);
      return true;
    }
    if (action.equals("setDecodingSpeed")) {
      this.setDecodingSpeed(args, callbackContext);
      return true;
    }
    if (action.equals("setFormattingType")) {
      this.setFormattingType(args, callbackContext);
      return true;
    }
    if (action.equals("setCode11ChecksumType")) {
      this.setCode11ChecksumType(args, callbackContext);
      return true;
    }
    if (action.equals("setMsiChecksumType")) {
      this.setMsiChecksumType(args, callbackContext);
      return true;
    }
    if (action.equals("setCode39ChecksumType")) {
      this.setCode39ChecksumType(args, callbackContext);
      return true;
    }
    if (action.equals("setBarcodeTypeEnabled")) {
      this.setBarcodeTypeEnabled(args, callbackContext);
      return true;
    }
    if (action.equals("setMulticodeCachingEnabled")) {
      this.setMulticodeCachingEnabled(args, callbackContext);
      return true;
    }
    if (action.equals("setMulticodeCachingDuration")) {
      this.setMulticodeCachingDuration(args, callbackContext);
      return true;
    }
    if (action.equals("setMaximumResultsCount")) {
      this.setMaximumResultsCount(args, callbackContext);
      return true;
    }
    if (action.equals("setBarcodeThumbnailOnResultEnabled")) {
      this.setBarcodeThumbnailOnResultEnabled(args, callbackContext);
      return true;
    }
    if (action.equals("setDuplicatesDelayMs")) {
      this.setDuplicatesDelayMs(args, callbackContext);
      return true;
    }
    if (action.equals("setThresholdBetweenDuplicatesScans")) {
      this.setThresholdBetweenDuplicatesScans(args, callbackContext);
      return true;
    }
    if (action.equals("setUpcEanDeblurEnabled")) {
      this.setUpcEanDeblurEnabled(args, callbackContext);
      return true;
    }
    if (action.equals("setMisshaped1DEnabled")) {
      this.setMisshaped1DEnabled(args, callbackContext);
      return true;
    }
    if (action.equals("setEnableVINRestrictions")) {
      this.setEnableVINRestrictions(args, callbackContext);
      return true;
    }
    if (action.equals("setDatamatrixDpmModeEnabled")) {
      this.setDatamatrixDpmModeEnabled(args, callbackContext);
      return true;
    }
    if (action.equals("setQrDpmModeEnabled")) {
      this.setQrDpmModeEnabled(args, callbackContext);
      return true;
    }
    if (action.equals("setQrMicroDpmModeEnabled")) {
      this.setQrMicroDpmModeEnabled(args, callbackContext);
      return true;
    }
    if (action.equals("configureBarkoder")) {
      this.configureBarkoder(args, callbackContext);
      return true;
    }
    if (action.equals("setIdDocumentMasterChecksumEnabled")) {
      this.setIdDocumentMasterChecksumEnabled(args, callbackContext);
      return true;
    }
    if (action.equals("isFlashAvailable")) {
      this.isFlashAvailable(callbackContext);
      return true;
    }
    if (action.equals("isCloseSessionOnResultEnabled")) {
      this.isCloseSessionOnResultEnabled(callbackContext);
      return true;
    }
    if (action.equals("isImageResultEnabled")) {
      this.isImageResultEnabled(callbackContext);
      return true;
    }
    if (action.equals("isLocationInImageResultEnabled")) {
      this.isLocationInImageResultEnabled(callbackContext);
      return true;
    }
    if (action.equals("isLocationInPreviewEnabled")) {
      this.isLocationInPreviewEnabled(callbackContext);
      return true;
    }
    if (action.equals("isPinchToZoomEnabled")) {
      this.isPinchToZoomEnabled(callbackContext);
      return true;
    }
    if (action.equals("isRegionOfInterestVisible")) {
      this.isRegionOfInterestVisible(callbackContext);
      return true;
    }
    if (action.equals("isBeepOnSuccessEnabled")) {
      this.isBeepOnSuccessEnabled(callbackContext);
      return true;
    }
    if (action.equals("isVibrateOnSuccessEnabled")) {
      this.isVibrateOnSuccessEnabled(callbackContext);
      return true;
    }
    if (action.equals("getVersion")) {
      this.getVersion(callbackContext);
      return true;
    }
    if (action.equals("getLocationLineColorHex")) {
      this.getLocationLineColorHex(callbackContext);
      return true;
    }
    if (action.equals("getRoiLineColorHex")) {
      this.getRoiLineColorHex(callbackContext);
      return true;
    }
    if (action.equals("getRoiOverlayBackgroundColorHex")) {
      this.getRoiOverlayBackgroundColorHex(callbackContext);
      return true;
    }
    if (action.equals("getMaxZoomFactor")) {
      this.getMaxZoomFactor(callbackContext);
      return true;
    }
    if (action.equals("getLocationLineWidth")) {
      this.getLocationLineWidth(callbackContext);
      return true;
    }
    if (action.equals("getRoiLineWidth")) {
      this.getRoiLineWidth(callbackContext);
      return true;
    }
    if (action.equals("getRegionOfInterest")) {
      this.getRegionOfInterest(callbackContext);
      return true;
    }
    if (action.equals("getBarcodeTypeLengthRange")) {
      this.getBarcodeTypeLengthRange(args, callbackContext);
      return true;
    }
    if (action.equals("getMsiChecksumType")) {
      this.getMsiChecksumType(callbackContext);
      return true;
    }
    if (action.equals("getCode39ChecksumType")) {
      this.getCode39ChecksumType(callbackContext);
      return true;
    }
    if (action.equals("getCode11ChecksumType")) {
      this.getCode11ChecksumType(callbackContext);
      return true;
    }
    if (action.equals("getEncodingCharacterSet")) {
      this.getEncodingCharacterSet(callbackContext);
      return true;
    }
    if (action.equals("getDecodingSpeed")) {
      this.getDecodingSpeed(callbackContext);
      return true;
    }
    if (action.equals("getFormattingType")) {
      this.getFormattingType(callbackContext);
      return true;
    }
    if (action.equals("getThreadsLimit")) {
      this.getThreadsLimit(callbackContext);
      return true;
    }
    if (action.equals("getMaximumResultsCount")) {
      this.getMaximumResultsCount(callbackContext);
      return true;
    }
    if (action.equals("getDuplicatesDelayMs")) {
      this.getDuplicatesDelayMs(callbackContext);
      return true;
    }
    if (action.equals("isBarcodeTypeEnabled")) {
      this.isBarcodeTypeEnabled(args, callbackContext);
      return true;
    }
    if (action.equals("getMulticodeCachingEnabled")) {
      this.getMulticodeCachingEnabled(callbackContext);
      return true;
    }
    if (action.equals("getMulticodeCachingDuration")) {
      this.getMulticodeCachingDuration(callbackContext);
      return true;
    }
    if (action.equals("isUpcEanDeblurEnabled")) {
      this.isUpcEanDeblurEnabled(callbackContext);
      return true;
    }
    if (action.equals("isMisshaped1DEnabled")) {
      this.isMisshaped1DEnabled(callbackContext);
      return true;
    }
    if (action.equals("isBarcodeThumbnailOnResultEnabled")) {
      this.isBarcodeThumbnailOnResultEnabled(callbackContext);
      return true;
    }
    if (action.equals("getThresholdBetweenDuplicatesScans")) {
      this.getThresholdBetweenDuplicatesScans(callbackContext);
      return true;
    }
    if (action.equals("isVINRestrictionsEnabled")) {
      this.isVINRestrictionsEnabled(callbackContext);
      return true;
    }
    if (action.equals("getBarkoderResolution")) {
      this.getBarkoderResolution(callbackContext);
      return true;
    }
    if (action.equals("isDatamatrixDpmModeEnabled")) {
      this.isDatamatrixDpmModeEnabled(callbackContext);
      return true;
    }
    if (action.equals("isQrDpmModeEnabled")) {
      this.isQrDpmModeEnabled(callbackContext);
      return true;
    }
    if (action.equals("isQrMicroDpmModeEnabled")) {
      this.isQrMicroDpmModeEnabled(callbackContext);
      return true;
    }
    if (action.equals("isIdDocumentMasterChecksumEnabled")) {
      this.isIdDocumentMasterChecksumEnabled(callbackContext);
      return true;
    }
    return false;
  }

  private void initialize(JSONArray args, CallbackContext callbackContext) throws JSONException {
    int width = args.getInt(0);
    int height = args.getInt(1);
    int x = args.getInt(2);
    int y = args.getInt(3);

    this.cordova.getActivity().runOnUiThread(() -> {
      FrameLayout barkoderViewParent = new FrameLayout(this.cordova.getContext());
      barkoderViewParentId = View.generateViewId();
      barkoderViewParent.setId(barkoderViewParentId);

      barkoderView = new BarkoderView(this.cordova.getContext());
      createBarkoderConfig(this.cordova.getContext());

      FrameLayout.LayoutParams lp = new FrameLayout.LayoutParams(getScaledPixels(width), getScaledPixels(height));
      lp.topMargin = getScaledPixels(y);
      lp.leftMargin = getScaledPixels(x);

      barkoderView.setLayoutParams(lp);

      barkoderViewParent.addView(barkoderView);

      ((ViewGroup) webView.getView().getParent()).addView(barkoderViewParent);
    });

    callbackContext.success("BarkoderView initialized: " + width + " " + height + " " + x + " " + y);
  }

  public void createBarkoderConfig(Context context) {
    // In order to perform scanning, config property need to be set before
    // If license key is not valid you will receive results with asterisks inside
    barkoderView.config = new BarkoderConfig(context, licenseKey, licenseCheckResult ->
      BarkoderLog.i(TAG, "LICENSE RESULT: " + licenseCheckResult.message));
  }

  private void registerWithLicenseKey(JSONArray args, CallbackContext callbackContext) throws JSONException {
    String licenseKey = args.getString(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      this.licenseKey = licenseKey;
    });

    callbackContext.success("licenseKey: " + licenseKey);
  }

  @Override
  public void scanningFinished(Barkoder.Result[] results, Bitmap[] thumbnails, Bitmap image) {
    JSONObject barkoderResultsToJSON = BarkoderUtil.barkoderResultsToJSON(results, thumbnails, image);
    PluginResult result = new PluginResult(PluginResult.Status.OK, barkoderResultsToJSON);
    if (!barkoderView.config.isCloseSessionOnResultEnabled()) {
      result.setKeepCallback(true);
    }
    resultCallbackContext.sendPluginResult(result);
  }

  // - Setters

  private void setZoomFactor(JSONArray args, CallbackContext callbackContext) throws JSONException {
    double zoomFactor = args.getDouble(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.setZoomFactor((float) zoomFactor);
    });

    callbackContext.success();
  }

  private void setFlashEnabled(JSONArray args, CallbackContext callbackContext) throws JSONException {
    boolean enabled = args.getBoolean(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.setFlashEnabled(enabled);
    });

    callbackContext.success();
  }

  private void startCamera(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.startCamera();
    });

    callbackContext.success();
  }

  private void startScanning(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.startScanning(this);
    });
  }

  private void stopScanning(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.stopScanning();
    });

    callbackContext.success();
  }

  private void pauseScanning(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.pauseScanning();
    });

    callbackContext.success();
  }

  private void scanImage(JSONArray args, CallbackContext callbackContext) throws JSONException {
    String base64image = args.getString(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      // Decode the base64 image string into a byte array using android.util.Base64
    byte[] imageData = android.util.Base64.decode(base64image, android.util.Base64.DEFAULT);
    if (imageData == null) {
      return; // If decoding fails, exit
    }

    // Create a Bitmap from the decoded byte array
    Bitmap image = BitmapFactory.decodeByteArray(imageData, 0, imageData.length);
    if (image == null) {
      return;
    }

    // Call the BarkoderHelper's scanImage function with the image, config, and result delegate
      BarkoderHelper.scanImage(image, barkoderView.config, this, this.barkoderView.getContext());
    });
  }

  private void setLocationLineColor(JSONArray args, CallbackContext callbackContext) throws JSONException {
    String hexColor = args.getString(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.config.setLocationLineColor(BarkoderUtil.hexColorToIntColor(hexColor));
    });

    callbackContext.success();
  }

  private void setLocationLineWidth(JSONArray args, CallbackContext callbackContext) throws JSONException {
    double lineWidth = args.getDouble(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.config.setLocationLineWidth((float) lineWidth);
    });

    callbackContext.success();
  }

  private void setRoiLineColor(JSONArray args, CallbackContext callbackContext) throws JSONException {
    String hexColor = args.getString(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.config.setRoiLineColor(BarkoderUtil.hexColorToIntColor(hexColor));
    });

    callbackContext.success();
  }

  private void setRoiLineWidth(JSONArray args, CallbackContext callbackContext) throws JSONException {
    double lineWidth = args.getDouble(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.config.setRoiLineWidth((float) lineWidth);
    });

    callbackContext.success();
  }

  private void setRoiOverlayBackgroundColor(JSONArray args, CallbackContext callbackContext) throws JSONException {
    String hexColor = args.getString(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.config.setRoiOverlayBackgroundColor(BarkoderUtil.hexColorToIntColor(hexColor));
    });

    callbackContext.success();
  }

  private void setCloseSessionOnResultEnabled(JSONArray args, CallbackContext callbackContext) throws JSONException {
    boolean enabled = args.getBoolean(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.config.setCloseSessionOnResultEnabled(enabled);
    });

    callbackContext.success();
  }

  private void setImageResultEnabled(JSONArray args, CallbackContext callbackContext) throws JSONException {
    boolean enabled = args.getBoolean(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.config.setImageResultEnabled(enabled);
    });

    callbackContext.success();
  }

  private void setLocationInImageResultEnabled(JSONArray args, CallbackContext callbackContext) throws JSONException {
    boolean enabled = args.getBoolean(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.config.setLocationInImageResultEnabled(enabled);
    });

    callbackContext.success();
  }

  private void setRegionOfInterest(JSONArray args, CallbackContext callbackContext) throws JSONException {
    double left = args.getDouble(0);
    double top = args.getDouble(1);
    double width = args.getDouble(2);
    double height = args.getDouble(3);

    this.cordova.getActivity().runOnUiThread(() -> {
      try {
        barkoderView.config.setRegionOfInterest((float) left, (float) top, (float) width, (float) height);

        callbackContext.success();
      } catch (IllegalArgumentException ex) {
        callbackContext.error(BarkoderErrors.ROI_NOT_SET + "Error: " + ex.getMessage());
      }
    });
  }

  private void setThreadsLimit(JSONArray args, CallbackContext callbackContext) throws JSONException {
    int threadsLimit = args.getInt(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      try {
        BarkoderConfig.SetThreadsLimit(threadsLimit);

        callbackContext.success();
      } catch (IllegalArgumentException ex) {
        callbackContext.error(BarkoderErrors.THREADS_LIMIT_NOT_SET + "Error: " + ex.getMessage());
      }
    });
  }

  private void setLocationInPreviewEnabled(JSONArray args, CallbackContext callbackContext) throws JSONException {
    boolean enabled = args.getBoolean(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.config.setLocationInPreviewEnabled(enabled);
    });

    callbackContext.success();
  }

  private void setPinchToZoomEnabled(JSONArray args, CallbackContext callbackContext) throws JSONException {
    boolean enabled = args.getBoolean(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.config.setPinchToZoomEnabled(enabled);
    });

    callbackContext.success();
  }

  private void setRegionOfInterestVisible(JSONArray args, CallbackContext callbackContext) throws JSONException {
    boolean regionOfInterestVisible = args.getBoolean(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.config.setRegionOfInterestVisible(regionOfInterestVisible);
    });

    callbackContext.success();
  }

  private void setBarkoderResolution(JSONArray args, CallbackContext callbackContext) throws JSONException {
    int resolutionIndex = args.getInt(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      try {
        BarkoderResolution bkdResolution = BarkoderResolution.values()[resolutionIndex];
        barkoderView.config.setBarkoderResolution(bkdResolution);

        callbackContext.success();
      } catch (IllegalArgumentException ex) {
        callbackContext.error(BarkoderErrors.INVALID_RESOLUTION + "Error: " + ex.getMessage());
      }
    });
  }

  private void setBeepOnSuccessEnabled(JSONArray args, CallbackContext callbackContext) throws JSONException {
    boolean enabled = args.getBoolean(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.config.setBeepOnSuccessEnabled(enabled);
    });

    callbackContext.success();
  }

  private void setVibrateOnSuccessEnabled(JSONArray args, CallbackContext callbackContext) throws JSONException {
    boolean enabled = args.getBoolean(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.config.setVibrateOnSuccessEnabled(enabled);
    });

    callbackContext.success();
  }

  private void showLogMessages(JSONArray args, CallbackContext callbackContext) throws JSONException {
    boolean show = args.getBoolean(0);

    // TODO: - Logic about log messages
//    this.cordova.getActivity().runOnUiThread(() -> { ; });

    callbackContext.success();
  }

  private void setBarcodeTypeLengthRange(JSONArray args, CallbackContext callbackContext) throws JSONException {
    int barcodeTypeOrdinal = args.getInt(0);
    int min = args.getInt(1);
    int max = args.getInt(2);

    this.cordova.getActivity().runOnUiThread(() -> {
      if (barcodeTypeOrdinal == Barkoder.BarcodeType.Code128.ordinal() ||
        barcodeTypeOrdinal == Barkoder.BarcodeType.Code93.ordinal() ||
        barcodeTypeOrdinal == Barkoder.BarcodeType.Code39.ordinal() ||
        barcodeTypeOrdinal == Barkoder.BarcodeType.Codabar.ordinal() ||
        barcodeTypeOrdinal == Barkoder.BarcodeType.Code11.ordinal() ||
        barcodeTypeOrdinal == Barkoder.BarcodeType.Msi.ordinal()) {
        try {
          final Barkoder.SpecificConfig specificConfig = BarkoderUtil.getSpecificConfigRefFromBarcodeTypeOrdinal(barcodeTypeOrdinal,
            barkoderView.config.getDecoderConfig());

          if (specificConfig != null) {
            if (specificConfig.setLengthRange(min, max) == 0)
              callbackContext.success();
            else
              callbackContext.error(BarkoderErrors.LENGTH_RANGE_NOT_VALID + "");
          } else {
            callbackContext.error(BarkoderErrors.BARCODE_TYPE_NOT_FOUNDED + "");
          }
        } catch (Exception ex) {
          callbackContext.error(BarkoderErrors.BARCODE_TYPE_NOT_FOUNDED + "Error: " + ex.getMessage());
        }
      } else {
        callbackContext.error(BarkoderErrors.BARCODE_TYPE_NOT_SUPPORTED + "");
      }
    });
  }

  private void setEncodingCharacterSet(JSONArray args, CallbackContext callbackContext) throws JSONException {
    String characterSet = args.getString(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.config.getDecoderConfig().encodingCharacterSet = characterSet;
    });

    callbackContext.success();
  }

  private void setDecodingSpeed(JSONArray args, CallbackContext callbackContext) throws JSONException {
    int decodingSpeedOrdinal = args.getInt(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.config.getDecoderConfig().decodingSpeed = Barkoder.DecodingSpeed.valueOf(decodingSpeedOrdinal);
    });

    callbackContext.success();
  }

  private void setFormattingType(JSONArray args, CallbackContext callbackContext) throws JSONException {
    int formattingTypeOrdinal = args.getInt(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.config.getDecoderConfig().formattingType = Barkoder.FormattingType.valueOf(formattingTypeOrdinal);
    });

    callbackContext.success();
  }

  private void setCode11ChecksumType(JSONArray args, CallbackContext callbackContext) throws JSONException {
    int checksumTypeOrdinal = args.getInt(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      try {
        barkoderView.config.getDecoderConfig().Code11.checksumType = Barkoder.Code11ChecksumType.valueOf(checksumTypeOrdinal);

        callbackContext.success();
      } catch (Exception ex) {
        callbackContext.error(BarkoderErrors.CHECKSUM_TYPE_NOT_FOUNDED + "Error: " + ex.getMessage());
      }
    });
  }

  private void setMsiChecksumType(JSONArray args, CallbackContext callbackContext) throws JSONException {
    int checksumTypeOrdinal = args.getInt(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      try {
        barkoderView.config.getDecoderConfig().Msi.checksumType = Barkoder.MsiChecksumType.valueOf(checksumTypeOrdinal);

        callbackContext.success();
      } catch (Exception ex) {
        callbackContext.error(BarkoderErrors.CHECKSUM_TYPE_NOT_FOUNDED + "Error: " + ex.getMessage());
      }
    });
  }

  private void setCode39ChecksumType(JSONArray args, CallbackContext callbackContext) throws JSONException {
    int checksumTypeOrdinal = args.getInt(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      try {
        barkoderView.config.getDecoderConfig().Code39.checksumType = Barkoder.Code39ChecksumType.valueOf(checksumTypeOrdinal);

        callbackContext.success();
      } catch (Exception ex) {
        callbackContext.error(BarkoderErrors.CHECKSUM_TYPE_NOT_FOUNDED + "Error: " + ex.getMessage());
      }
    });
  }

  private void setBarcodeTypeEnabled(JSONArray args, CallbackContext callbackContext) throws JSONException {
    int barcodeTypeOrdinal = args.getInt(0);
    boolean enabled = args.getBoolean(1);

    this.cordova.getActivity().runOnUiThread(() -> {
      try {
        final Barkoder.SpecificConfig specificConfig = BarkoderUtil.getSpecificConfigRefFromBarcodeTypeOrdinal(barcodeTypeOrdinal,
          barkoderView.config.getDecoderConfig());

        if (specificConfig != null) {
          specificConfig.enabled = enabled;

          callbackContext.success();
        } else {
          callbackContext.error(BarkoderErrors.BARCODE_TYPE_NOT_FOUNDED + "");
        }
      } catch (Exception ex) {
        callbackContext.error(BarkoderErrors.BARCODE_TYPE_NOT_FOUNDED + "Error: " + ex.getMessage());
      }
    });
  }

  private void setMulticodeCachingEnabled(JSONArray args, CallbackContext callbackContext) throws JSONException {
    boolean multicodeCachingEnabled = args.getBoolean(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      BarkoderConfig.SetMulticodeCachingEnabled(multicodeCachingEnabled);
    });

    callbackContext.success();
  }

  private void setMulticodeCachingDuration(JSONArray args, CallbackContext callbackContext) throws JSONException {
    int multicodeCachingDuration = args.getInt(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      BarkoderConfig.SetMulticodeCachingDuration(multicodeCachingDuration);
    });

    callbackContext.success();
  }

  private void setMaximumResultsCount(JSONArray args, CallbackContext callbackContext) throws JSONException {
    int maximumResultsCount = args.getInt(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.config.getDecoderConfig().maximumResultsCount = maximumResultsCount;
    });

    callbackContext.success();
  }

  private void setBarcodeThumbnailOnResultEnabled(JSONArray args, CallbackContext callbackContext) throws JSONException {
    boolean enabled = args.getBoolean(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.config.setThumbnailOnResultEnabled(enabled);
    });

    callbackContext.success();
  }

  private void setDuplicatesDelayMs(JSONArray args, CallbackContext callbackContext) throws JSONException {
    int duplicatesDelayMs = args.getInt(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.config.getDecoderConfig().duplicatesDelayMs = duplicatesDelayMs;
    });

    callbackContext.success();
  }

  private void setThresholdBetweenDuplicatesScans(JSONArray args, CallbackContext callbackContext) throws JSONException {
    int thresholdBetweenDuplicatesScans = args.getInt(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.config.setThresholdBetweenDuplicatesScans(thresholdBetweenDuplicatesScans);
    });

    callbackContext.success();
  }

  private void setUpcEanDeblurEnabled(JSONArray args, CallbackContext callbackContext) throws JSONException {
    boolean enabled = args.getBoolean(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.config.getDecoderConfig().upcEanDeblur = enabled;
    });

    callbackContext.success();
  }

  private void setMisshaped1DEnabled(JSONArray args, CallbackContext callbackContext) throws JSONException {
    boolean enabled = args.getBoolean(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.config.getDecoderConfig().enableMisshaped1D = enabled;
    });

    callbackContext.success();
  }

  private void setEnableVINRestrictions(JSONArray args, CallbackContext callbackContext) throws JSONException {
    boolean enableVINRestrictions = args.getBoolean(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.config.getDecoderConfig().enableVINRestrictions = enableVINRestrictions;
    });

    callbackContext.success();
  }

  private void setDatamatrixDpmModeEnabled(JSONArray args, CallbackContext callbackContext) throws JSONException {
    boolean enabled = args.getBoolean(0);

    this.cordova.getActivity().runOnUiThread(() -> barkoderView.config.getDecoderConfig().Datamatrix.dpmMode = enabled);

    callbackContext.success();
  }

  private void setQrDpmModeEnabled(JSONArray args, CallbackContext callbackContext) throws JSONException {
    boolean enabled = args.getBoolean(0);

    this.cordova.getActivity().runOnUiThread(() -> barkoderView.config.getDecoderConfig().QR.dpmMode = enabled);

    callbackContext.success();
  }

  private void setQrMicroDpmModeEnabled(JSONArray args, CallbackContext callbackContext) throws JSONException {
    boolean enabled = args.getBoolean(0);

    this.cordova.getActivity().runOnUiThread(() -> barkoderView.config.getDecoderConfig().QRMicro.dpmMode = enabled);

    callbackContext.success();
  }

  private void configureBarkoder(JSONArray args, CallbackContext callbackContext) throws JSONException {
    JSONObject configAsJson = args.getJSONObject(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      try {
        // Its easier for the users to send us hex color from the cross platform
        if (configAsJson.has("roiLineColor")) {
          String colorAsHex = configAsJson.getString("roiLineColor");
          configAsJson.put("roiLineColor", BarkoderUtil.hexColorToIntColor(colorAsHex));
        }

        if (configAsJson.has("roiOverlayBackgroundColor")) {
          String colorAsHex = configAsJson.getString("roiOverlayBackgroundColor");
          configAsJson.put("roiOverlayBackgroundColor", BarkoderUtil.hexColorToIntColor(colorAsHex));
        }

        if (configAsJson.has("locationLineColor")) {
          String colorAsHex = configAsJson.getString("locationLineColor");
          configAsJson.put("locationLineColor", BarkoderUtil.hexColorToIntColor(colorAsHex));
        }

        String convertedBarkoderConfigAsString = configAsJson.toString();

        String[] keys = {"aztec", "aztecCompact", "qr", "qrMicro", "code128", "code93", "code39", "codabar", "code11", "msi", "upcA", "upcE", "upcE1", "ean13", "ean8", "pdf417", "pdf417Micro", "datamatrix", "code25", "interleaved25", "itf14", "iata25", "matrix25", "datalogic25", "coop25", "code32", "telepen", "dotcode", "idDocument", "minLength", "maxLength", "threadsLimit", "roiX", "roiY", "roiWidth", "roiHeight"};

        String[] values = {"Aztec", "Aztec Compact", "QR", "QR Micro", "Code 128", "Code 93", "Code 39", "Codabar", "Code 11", "MSI", "Upc-A", "Upc-E", "Upc-E1", "Ean-13", "Ean-8", "PDF 417", "PDF 417 Micro", "Datamatrix", "Code 25", "Interleaved 2 of 5", "ITF 14", "IATA 25", "Matrix 25", "Datalogic 25", "COOP 25", "Code 32", "Telepen", "Dotcode", "ID Document", "minimumLength", "maximumLength", "maxThreads", "roi_x", "roi_y", "roi_w", "roi_h"};

        Map<String, String> map = new HashMap<>();
        for (int i = 0; i < keys.length; i++) {
          map.put(keys[i], values[i]);
        }

        for (Map.Entry<String, String> entry : map.entrySet()) {
          convertedBarkoderConfigAsString = convertedBarkoderConfigAsString.replaceAll(entry.getKey(), entry.getValue());
        }

        JSONObject convertedConfigAsJson = new JSONObject(convertedBarkoderConfigAsString);

        BarkoderHelper.applyJsonToConfig(barkoderView.config, convertedConfigAsJson);

        callbackContext.success();
      } catch (Exception ex) {
        callbackContext.error(BarkoderErrors.BARKODER_CONFIG_IS_NOT_VALID + "Error: " + ex.getMessage());
      }
    });
  }

  private void setIdDocumentMasterChecksumEnabled(JSONArray args, CallbackContext callbackContext) throws JSONException {
    boolean enabled = args.getBoolean(0);

    this.cordova.getActivity().runOnUiThread(() -> barkoderView.config.getDecoderConfig().IDDocument.masterChecksumType = Barkoder.StandardChecksumType.valueOf(enabled ? 1 : 0));

    callbackContext.success();
  }



  // Getters

  private void isFlashAvailable(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.isFlashAvailable(value -> callbackContext.success(String.valueOf(value)));
    });
  }

  private void isCloseSessionOnResultEnabled(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(String.valueOf(barkoderView.config.isCloseSessionOnResultEnabled()));
    });
  }

  private void isImageResultEnabled(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(String.valueOf(barkoderView.config.isImageResultEnabled()));
    });
  }

  private void isLocationInImageResultEnabled(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(String.valueOf(barkoderView.config.isLocationInImageResultEnabled()));
    });
  }

  private void isLocationInPreviewEnabled(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(String.valueOf(barkoderView.config.isLocationInPreviewEnabled()));
    });
  }

  private void isPinchToZoomEnabled(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(String.valueOf(barkoderView.config.isPinchToZoomEnabled()));
    });
  }

  private void isRegionOfInterestVisible(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(String.valueOf(barkoderView.config.isRegionOfInterestVisible()));
    });
  }

  private void isBeepOnSuccessEnabled(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(String.valueOf(barkoderView.config.isBeepOnSuccessEnabled()));
    });
  }

  private void isVibrateOnSuccessEnabled(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(String.valueOf(barkoderView.config.isVibrateOnSuccessEnabled()));
    });
  }

  private void getVersion(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(Barkoder.GetVersion());
    });
  }

  private void getLocationLineColorHex(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      String hexColor = String.format("#%08X", barkoderView.config.getLocationLineColor());
      callbackContext.success(hexColor);
    });
  }

  private void getRoiLineColorHex(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      String hexColor = String.format("#%08X", barkoderView.config.getRoiLineColor());
      callbackContext.success(hexColor);
    });
  }

  private void getRoiOverlayBackgroundColorHex(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      String hexColor = String.format("#%08X", barkoderView.config.getRoiOverlayBackgroundColor());
      callbackContext.success(hexColor);
    });
  }

  private void getMaxZoomFactor(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      barkoderView.getMaxZoomFactor(value -> callbackContext.success(String.valueOf(value)));
    });
  }

  private void getLocationLineWidth(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(String.valueOf(barkoderView.config.getLocationLineWidth()));
    });
  }

  private void getRoiLineWidth(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(String.valueOf(barkoderView.config.getRoiLineWidth()));
    });
  }

  private void getRegionOfInterest(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      Barkoder.BKRect roiRect = barkoderView.config.getRegionOfInterest();
      JSONObject jsonObject = new JSONObject();
      try {
        jsonObject.put("roiX", roiRect.left);
        jsonObject.put("roiY", roiRect.top);
        jsonObject.put("roiWidth", roiRect.width);
        jsonObject.put("roiHeight", roiRect.height);
        callbackContext.success(jsonObject);
      } catch (JSONException e) {
        callbackContext.error(e.getMessage());
      }
    });
  }

  private void getBarcodeTypeLengthRange(JSONArray args, CallbackContext callbackContext) throws JSONException {
    int barcodeTypeOrdinal = args.getInt(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      if (barcodeTypeOrdinal == Barkoder.BarcodeType.Code128.ordinal() ||
        barcodeTypeOrdinal == Barkoder.BarcodeType.Code93.ordinal() ||
        barcodeTypeOrdinal == Barkoder.BarcodeType.Code39.ordinal() ||
        barcodeTypeOrdinal == Barkoder.BarcodeType.Codabar.ordinal() ||
        barcodeTypeOrdinal == Barkoder.BarcodeType.Code11.ordinal() ||
        barcodeTypeOrdinal == Barkoder.BarcodeType.Msi.ordinal()) {

        try {
          final Barkoder.SpecificConfig specificConfig = BarkoderUtil.getSpecificConfigRefFromBarcodeTypeOrdinal(barcodeTypeOrdinal,
            barkoderView.config.getDecoderConfig());

          if (specificConfig != null) {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put(specificConfig.typeName, Arrays.asList(specificConfig.minimumLength, specificConfig.maximumLength));
            callbackContext.success(jsonObject);
          } else {
            callbackContext.error(BarkoderErrors.BARCODE_TYPE_NOT_FOUNDED + "");
          }
        } catch (Exception ex) {
          callbackContext.error(BarkoderErrors.BARCODE_TYPE_NOT_FOUNDED + "Error: " + ex.getMessage());
        }
      } else {
        callbackContext.error(BarkoderErrors.BARCODE_TYPE_NOT_SUPPORTED + "");
      }
    });
  }

  private void getMsiChecksumType(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(barkoderView.config.getDecoderConfig().Msi.checksumType.ordinal());
    });
  }

  private void getCode39ChecksumType(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(barkoderView.config.getDecoderConfig().Code39.checksumType.ordinal());
    });
  }

  private void getCode11ChecksumType(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(barkoderView.config.getDecoderConfig().Code11.checksumType.ordinal());
    });
  }

  private void getEncodingCharacterSet(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(barkoderView.config.getDecoderConfig().encodingCharacterSet);
    });
  }

  private void getDecodingSpeed(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(barkoderView.config.getDecoderConfig().decodingSpeed.ordinal());
    });
  }

  private void getFormattingType(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(barkoderView.config.getDecoderConfig().formattingType.ordinal());
    });
  }

  private void getThreadsLimit(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(BarkoderConfig.GetThreadsLimit());
    });
  }

  private void getMaximumResultsCount(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(barkoderView.config.getDecoderConfig().maximumResultsCount);
    });
  }

  private void getDuplicatesDelayMs(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(barkoderView.config.getDecoderConfig().duplicatesDelayMs);
    });
  }

  private void isBarcodeTypeEnabled(JSONArray args, CallbackContext callbackContext) throws JSONException {
    int barcodeTypeOrdinal = args.getInt(0);

    this.cordova.getActivity().runOnUiThread(() -> {
      try {
        final Barkoder.SpecificConfig specificConfig = BarkoderUtil.getSpecificConfigRefFromBarcodeTypeOrdinal(barcodeTypeOrdinal,
          barkoderView.config.getDecoderConfig());

        if (specificConfig != null) {
          JSONObject jsonObject = new JSONObject();
          jsonObject.put(specificConfig.typeName, specificConfig.enabled);
          callbackContext.success(jsonObject);
        } else {
          callbackContext.error(BarkoderErrors.BARCODE_TYPE_NOT_FOUNDED + "");
        }
      } catch (Exception ex) {
        callbackContext.error(BarkoderErrors.BARCODE_TYPE_NOT_FOUNDED + "Error: " + ex.getMessage());
      }
    });
  }

  private void getMulticodeCachingEnabled(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(String.valueOf(BarkoderConfig.IsMulticodeCachingEnabled()));
    });
  }

  private void getMulticodeCachingDuration(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(BarkoderConfig.GetMulticodeCachingDuration());
    });
  }

  private void isUpcEanDeblurEnabled(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(String.valueOf(barkoderView.config.getDecoderConfig().upcEanDeblur));
    });
  }

  private void isMisshaped1DEnabled(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(String.valueOf(barkoderView.config.getDecoderConfig().enableMisshaped1D));
    });
  }

  private void isBarcodeThumbnailOnResultEnabled(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(String.valueOf(barkoderView.config.getThumbnailOnResulEnabled()));
    });
  }

  private void getThresholdBetweenDuplicatesScans(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(barkoderView.config.getThresholdBetweenDuplicatesScans());
    });
  }

  private void isVINRestrictionsEnabled(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(String.valueOf(barkoderView.config.getDecoderConfig().enableVINRestrictions));
    });
  }

  private void getBarkoderResolution(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(barkoderView.config.getBarkoderResolution().ordinal());
    });
  }

  private void isDatamatrixDpmModeEnabled(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(String.valueOf(barkoderView.config.getDecoderConfig().Datamatrix.dpmMode));
    });
  }

  private void isQrDpmModeEnabled(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(String.valueOf(barkoderView.config.getDecoderConfig().QR.dpmMode));
    });
  }

  private void isQrMicroDpmModeEnabled(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(String.valueOf(barkoderView.config.getDecoderConfig().QRMicro.dpmMode));
    });
  }

  private void isIdDocumentMasterChecksumEnabled(CallbackContext callbackContext) {
    this.cordova.getActivity().runOnUiThread(() -> {
      callbackContext.success(String.valueOf(barkoderView.config.getDecoderConfig().IDDocument.masterChecksumType.ordinal() == 1));
    });
  }

  public int getScaledPixels(float pixels) {
    // Get the screen's density scale
    final float scale = this.cordova.getActivity().getResources().getDisplayMetrics().density;
    // Convert the dps to pixels, based on density scale
    return (int) (pixels * scale + 0.5f);
  }


}
