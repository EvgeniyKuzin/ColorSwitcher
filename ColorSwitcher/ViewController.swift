//
//  ViewController.swift
//  ColorSwitcher
//
//  Created by Evgeniy Kuzin on 05.02.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!

    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    
    private func colorChange () {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    @IBAction func redSliderMove(_ sender: Any) {
        redValue.text = String(format:"%.2f", redSlider.value)
        colorChange()
    }
    
    @IBAction func greenSliderMove(_ sender: Any) {
        greenValue.text = String(format:"%.2f", greenSlider.value)
        colorChange()
    }
    
    @IBAction func blueSliderMove(_ sender: Any) {
        blueValue.text = String(format:"%.2f", blueSlider.value)
        colorChange()
    }
}

