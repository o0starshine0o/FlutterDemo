//
//  MainViewController.swift
//  Runner
//
//  Created by admin on 2021/3/12.
//

import UIKit

class MainViewController: FlutterViewController {

    @IBSegueAction func toNative(_ coder: NSCoder) -> NativeViewController? {
        return NativeViewController(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        FlutterMethodChannel(name: "demoChannel", binaryMessenger: self.binaryMessenger).setMethodCallHandler(handler)
        
        (UIApplication.shared.delegate as! AppDelegate).flutterEngine = engine
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        engine?.viewController = self
//        super.viewWillAppear(animated)
//    }
//    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        engine?.viewController = nil
//    }
    
    func handler(call:FlutterMethodCall ,result: FlutterResult){
        if call.method == "jump" {
            performSegue(withIdentifier: "toNative", sender: nil)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
