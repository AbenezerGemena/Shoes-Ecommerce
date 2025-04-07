import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:shoes/app.dart';
import 'package:shoes/services/service_locator.dart';

void main() {
  setupLocator();
  runApp( 
    DevicePreview(
      enabled: true,
      builder: (context) => App()
      )
 

  );
}

