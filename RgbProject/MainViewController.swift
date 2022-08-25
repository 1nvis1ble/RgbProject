//
//  ViewController.swift
//  RgbProject
//
//  Created by Aleksey Zyamin on 24.08.2022.
//

import UIKit

class MainViewController: UIViewController {
    
/* override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let backView = segue.destination as? RgbViewController else { return }
        backView.preView?.backgroundColor = view.backgroundColor
    }
    */
    
   override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        guard let rgbVC = segue.source as? RgbViewController else { return }
        view.backgroundColor = rgbVC.preView.backgroundColor
    }

    
}
