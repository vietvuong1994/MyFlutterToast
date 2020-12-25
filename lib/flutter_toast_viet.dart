
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterToast {
  static const MethodChannel _channel =
      const MethodChannel('flutter_toast');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<Null> showMyToast(String msg) async {
    Map<String, dynamic> args = {"msg": msg};
    await _channel.invokeMethod('showToast', args);
    return null;
  }

  static Future<Null> showActivity() async {
    await _channel.invokeMethod('showActivity');
    return null;
  }
}
