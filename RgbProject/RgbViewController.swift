//
//  RgbViewController.swift
//  RgbProject
//
//  Created by Aleksey Zyamin on 24.08.2022.
//

import UIKit

class RgbViewController: UIViewController {
    
    @IBOutlet var preView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    var changeView: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        preView.layer.cornerRadius = 20
        preView.backgroundColor = changeView
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)


    }
    
    @IBAction func rgbSliderAction(_ sender: UISlider) {
        preView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    @IBAction func unwindSegueCollor(_ segue: UIStoryboardSegue) {
        guard let mainVC = segue.source as? MainViewController else { return }
        preView.backgroundColor = mainVC.view.backgroundColor
    }
    

}
