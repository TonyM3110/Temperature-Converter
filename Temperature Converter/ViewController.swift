//
//  ViewController.swift
//  Temperature Converter
//
//  Created by Tony on 12.03.2022.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var celsiusLable: UILabel!
    @IBOutlet weak var fahrenheitLable: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
   
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temeratureCelsius = Int(round(sender.value))
        celsiusLable.text = "\(temeratureCelsius)ºC"
        let fahrenheitTemereture = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLable.text = "\(fahrenheitTemereture)ºF"
    }
    
}

