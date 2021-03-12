//
//  NativeViewController.swift
//  Runner
//
//  Created by admin on 2021/3/12.
//

import UIKit

class NativeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func toFlutterr(_ sender: UIButton) {
        let engine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine!
        let secondViewController = SecondViewController.init(engine: engine, nibName: nil, bundle: nil)
        navigationController?.pushViewController(secondViewController, animated: true)
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
