import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

TextStyle titleTextStyle(DeviceScreenType deviceScreenType) {
  return TextStyle(
      fontSize: deviceScreenType == DeviceScreenType.mobile ? 20 : 30,
      color: Colors.lightBlue);
}
