
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPluginLy {
  static const MethodChannel _channel =
      const MethodChannel('flutter_plugin_ly');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
