//
//  ViewController.swift
//  Test
//
//  Created by 순진이 on 2021/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextView: UITextView!
    
    @IBOutlet weak var targetView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redlabelSlider: UILabel!
    @IBOutlet weak var greenlabelSlider: UILabel!
    @IBOutlet weak var bluelabelSlider: UILabel!
    
    @IBAction func SliderChanged(_ sender: Any) {
        let r = CGFloat(redSlider.value)
        let g = CGFloat(greenSlider.value)
        let b = CGFloat(blueSlider.value)
        
        targetView.backgroundColor = UIColor(displayP3Red: r, green: g, blue: b, alpha: 1.0)
        
        TextView.backgroundColor = UIColor(displayP3Red: r, green: g, blue: b, alpha: 1.0)
       
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        TextView.dataDetectorTypes = [.link, .phoneNumber]
    }


}

