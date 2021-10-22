//
//  ViewController.swift
//  Lesson 2
//
//  Created by Дмитрий Татаринцев on 22.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewColor: UIView!
    
    @IBOutlet weak var greenName: UILabel!
    @IBOutlet weak var blueName: UILabel!
    @IBOutlet weak var redName: UILabel!
    
    @IBOutlet weak var redColor: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.layer.backgroundColor = UIColor.gray.cgColor
        
        viewColor.layer.backgroundColor = UIColor.black.cgColor
        viewColor.layer.cornerRadius = 10
        
        redName.text = "Red:"
        greenName.text = "Green:"
        blueName.text = "Blue:"
        
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.value = 0
        redSlider.minimumTrackTintColor = .red
        
    
        
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.value = 0
        greenSlider.minimumTrackTintColor = .green
        
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.value = 0
        blueSlider.minimumTrackTintColor = .blue
    }

    @IBAction func sliderAction(_ sender: Any) {
        updateColor()
        updateValue()
    }
    
    
    func updateColor() {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
            red = CGFloat(redSlider.value)
        
        
            green = CGFloat(greenSlider.value)
        
        
            blue = CGFloat(blueSlider.value)
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        viewColor.backgroundColor = color
        
    }
    
    func updateValue () {
        redColor.text = String(redSlider.value)
        greenValue.text = String(greenSlider.value)
        blueValue.text = String(blueSlider.value)
        
    }
    
    
}

