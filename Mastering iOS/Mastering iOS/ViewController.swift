//
//  ViewController.swift
//  Mastering iOS
//
//  Created by 순진이 on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    
   
//    @IBAction func show(_ sender: Any) {
//        let controller = UIAlertController(title: "Hello", message: "Have a nice Day", preferredStyle: .alert)
//
//        let okAction = UIAlertAction(title: "OK", style: .default) { (action) in print(action.title) }
//        controller.addAction(okAction)
//
//        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
//            print(action.title) }
//        controller.addAction(cancelAction)
//
//        let destructiveAction = UIAlertAction(title: "Destructive", style: .destructive) { (action) in print(action.title) }
//        controller.addAction(destructiveAction)
//
//        controller.preferredAction = okAction
//
//        present(controller, animated: true, completion: nil)
//        }
//    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         //Do any additional setup after loading the view.
        let image1 = UIImage(named: "seaweed")

        ImageView.image = image1

        if let ptSize = image1?.size {
            print("Image size : \(ptSize)")
        }

        if let ptSize = image1?.size, let scale = image1?.scale {
            let px = CGSize(width: ptSize.width * scale, height: ptSize.height * scale)
            print("Image Size(px) : \(px)")
        }
    }

}

