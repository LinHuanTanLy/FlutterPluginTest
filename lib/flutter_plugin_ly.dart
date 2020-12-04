import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPluginLy {
  static const MethodChannel _channel =
      const MethodChannel('flutter_plugin_ly');

  static Future<int> get platformVersion async {
    final int version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String> jumpPage() async {
    return await _channel.invokeMethod("jumpPage");
  }
}
