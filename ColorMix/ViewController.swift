//
//  ViewController.swift
//  ColorMix
//
//  Created by Lucas da Silva Reis on 02/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func reset(_ sender: Any) {
        
        redSwitch.isOn = false
        greenSwitch.isOn = false
        blueSwitch.isOn = false
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        updateColor()
        updateControls()
        
    }
    
    @IBOutlet weak var darkSwitch: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        updateColor()
        updateControls()
        viewBackgroundDark()
    }
    @IBOutlet weak var backgroundColorView: UIView!
    @IBOutlet weak var colorView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorView.backgroundColor = .black
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor = UIColor.black.cgColor
        updateControls()
    }
    
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwitch.isOn {
            red = CGFloat(redSlider.value)
        }
        if greenSwitch.isOn {
            green = CGFloat(greenSlider.value)
        }
        if blueSwitch.isOn {
            blue = CGFloat(blueSlider.value)
        }
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    
    func viewBackgroundDark() {
        
        let dark = UIColor(red: 10.0 / 255.0, green: 10.0 / 255.0, blue: 45.0 / 255.0, alpha: 1.0)
        let ligth = UIColor(red: 240.0 / 255.0, green: 255.0 / 255.0, blue: 255.0 / 255.0, alpha: 1.0)
        
        if darkSwitch.isOn {
            backgroundColorView.backgroundColor = dark
        }else {
            backgroundColorView .backgroundColor = ligth
        }
        

    }

    @IBAction func sliderChanged(_ sender: Any) {
        updateColor()
    }
    
    func updateControls() {
        redSlider.isEnabled = redSwitch.isOn
        greenSlider.isEnabled = greenSwitch.isOn
        blueSlider.isEnabled = blueSwitch.isOn
    }
    
}

