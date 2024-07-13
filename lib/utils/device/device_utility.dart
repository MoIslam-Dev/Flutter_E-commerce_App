import 'dart:io';  // Provides support for dealing with file, socket, HTTP, and other I/O operations.

import 'package:flutter/material.dart';  // Provides a comprehensive set of material design widgets and themes for building Flutter applications.
import 'package:flutter/services.dart';  // Allows access to platform-specific features, such as changing system UI overlays and haptic feedback.
import 'package:flutter/foundation.dart';  // Provides foundational classes and utilities used across Flutter.
import 'package:get/get.dart';  // A powerful state management and dependency injection framework that simplifies state management in Flutter applications.
import 'package:url_launcher/url_launcher_string.dart';  // Provides a simple way to launch URLs in the default web browser or other appropriate applications.


/// EDeviceUtils class provides a set of utility methods to handle various device-related functionalities 
/// in a Flutter application. This includes methods for managing the keyboard, status bar, screen dimensions, 
/// device orientation, haptic feedback, and internet connectivity checks.
class EDeviceUtils {

  /// Hides the keyboard by removing focus from the current focus node.
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  /// Sets the color of the status bar.
  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }

  /// Checks if the device is in landscape orientation.
  static bool isLandscapeOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom == 0;
  }

  /// Checks if the device is in portrait orientation.
  static bool isPortraitOrientation(BuildContext context) {
    final viewInsets = View.of(context).viewInsets;
    return viewInsets.bottom != 0;
  }

  /// Sets the application to full screen mode.
  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  /// Retrieves the height of the screen.
  static double getScreenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  /// Retrieves the width of the screen.
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /// Retrieves the pixel ratio of the screen.
  static double getPixelRatio() {
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  /// Retrieves the height of the status bar.
  static double getStatusBarHeight() {
    return MediaQuery.of(Get.context!).padding.top;
  }

  /// Retrieves the height of the bottom navigation bar.
  static double getBottomNavigationBarHeight() {
    return kBottomNavigationBarHeight;
  }

  /// Retrieves the height of the app bar.
  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  /// Retrieves the height of the keyboard if visible.
  static double getKeyboardHeight() {
    final viewInsets = MediaQuery.of(Get.context!).viewInsets;
    return viewInsets.bottom;
  }

  /// Checks if the keyboard is visible.
  static Future<bool> isKeyboardVisible() async {
    final viewInsets = View.of(Get.context!).viewInsets;
    return viewInsets.bottom > 0;
  }

  /// Checks if the device is a physical device (Android or iOS).
  static Future<bool> isPhysicalDevice() async {
    return defaultTargetPlatform == TargetPlatform.android || defaultTargetPlatform == TargetPlatform.iOS;
  }

  /// Provides haptic feedback (vibration) for a specified duration.
  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, () => HapticFeedback.vibrate());
  }

  /// Sets the preferred screen orientations for the application.
  static Future<void> setPreferredOrientations(List<DeviceOrientation> orientations) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  /// Hides the status bar.
  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  /// Shows the status bar.
  static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
  }

  /// Checks if there is an active internet connection.
  static Future<bool> hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  /// Checks if the device is running on iOS.
  static bool isIOS() {
    return Platform.isIOS;
  }

  /// Checks if the device is running on Android.
  static bool isAndroid() {
    return Platform.isAndroid;
  }

  /// Launches a URL in the default web browser.
  static void launchUrl(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}
