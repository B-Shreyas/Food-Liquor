import 'package:flutter/material.dart';

class DeviceInfo {
  static MediaQueryData mQData;
  static void setMediaQuery(MediaQueryData mQData) {
    DeviceInfo.mQData = mQData;
  }

  static Size kDeviceSize = mQData.size;
  static double kDeviceHeight = kDeviceSize.height;
  static double kDeviceWidth = kDeviceSize.width;
  static double kStausBarHeight = mQData.padding.top;
}