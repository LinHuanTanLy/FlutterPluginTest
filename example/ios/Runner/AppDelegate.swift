import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController;
    let channel : FlutterMethodChannel = FlutterMethodChannel.init(name: "flutter_plugin_ly", binaryMessenger: controller.binaryMessenger);
    channel.setMethodCallHandler({
        (call:FlutterMethodCall,result:FlutterResult) -> Void in
        if("getPlatformVersion" == call.method){
            
            result("Android laji");
        }
    });
    
    
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
