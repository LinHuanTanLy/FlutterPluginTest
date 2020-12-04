import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
    
    var navigationController: UINavigationController?

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    let controller : FlutterViewController = FlutterViewController();
    self.navigationController = UINavigationController.init(rootViewController: controller);
    window = UIWindow(frame: UIScreen.main.bounds);
    window?.rootViewController = self.navigationController;

    window?.makeKeyAndVisible();
    
    let channel : FlutterMethodChannel = FlutterMethodChannel.init(name: "flutter_plugin_ly", binaryMessenger: controller.binaryMessenger);
    
    channel.setMethodCallHandler({
        (call:FlutterMethodCall,result:FlutterResult) -> Void in
        if("jumpPage" == call.method){
            self.goToNativePage(result: result);
        }
    })
    
//    let channel : FlutterMethodChannel = FlutterMethodChannel.init(name: "flutter_plugin_ly", binaryMessenger: controller.binaryMessenger);
//    self.navigationController = UINavigationController.init(rootViewController: controller);
//
//
//
//    channel.setMethodCallHandler({
//        (call:FlutterMethodCall,result:FlutterResult) -> Void in
//        if("getPlatformVersion" == call.method){
//            receiveBatteryLevel(result: result);
//           // result("Android laji");
//        }else if("jumpPage" == call.method){
//            result("ok");
//            UIApplication.shared.keyWindow?.rootViewController?.present(FirstViewController(), animated:false, completion:nil)
//        }
//    });
//
//
    
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
    private func goToNativePage(result:FlutterResult) {
        print("页面跳转");
        let vc:UIViewController = FirstViewController()
        vc.navigationItem.title = "新页面"
        self.navigationController?.pushViewController(vc, animated: true);
//        self.navigationController?.pushViewController(vc, animated: true);
    }

}


private func receiveBatteryLevel(result: FlutterResult) {
  let device = UIDevice.current;
  device.isBatteryMonitoringEnabled = true;
    result(Int(device.batteryLevel * 100));
}

