//
//  ViewController.swift
//  HomeWorkLesson2.2
//
//  Created by Богдан Олейник on 27.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewFrameColor: UIView!
    
    @IBOutlet var valueRedColor: UILabel!
    @IBOutlet var valueGreenColor: UILabel!
    @IBOutlet var valueBlueColor: UILabel!
    
    @IBOutlet var sliderRedColor: UISlider!
    @IBOutlet var sliderGreenColor: UISlider!
    @IBOutlet var sliderBlueColor: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewFrameColor.layer.cornerRadius = 10
        
        //Sliders
        
        sliderRedColor.minimumTrackTintColor = .systemRed
        sliderRedColor.minimumValue = 0
        sliderRedColor.maximumValue = 1
        sliderRedColor.value = 0.5
        
        sliderGreenColor.minimumTrackTintColor = .systemGreen
        sliderGreenColor.minimumValue = 0
        sliderGreenColor.maximumValue = 1
        sliderGreenColor.value = 0.5
        
        sliderBlueColor.minimumTrackTintColor = .systemBlue
        sliderBlueColor.minimumValue = 0
        sliderBlueColor.maximumValue = 1
        sliderBlueColor.value = 0.5
        
        
        valueRedColor.text = String(sliderRedColor.value)
        valueGreenColor.text = String(sliderGreenColor.value)
        valueBlueColor.text = String(sliderBlueColor.value)
        
    }
    
    func changeColor() {
        viewFrameColor.backgroundColor = UIColor(red: CGFloat(sliderRedColor.value), green: CGFloat(sliderGreenColor.value), blue: CGFloat(sliderBlueColor.value), alpha: 1)
    }
    
    @IBAction func sliderRedColorAction() {
        valueRedColor.text = String(sliderRedColor.value)
        changeColor()
    }
    
    @IBAction func sliderGreenColorAction() {
        valueGreenColor.text = String(sliderGreenColor.value)
        changeColor()
    }
    
    @IBAction func sliderBlueColorAction() {
        valueBlueColor.text = String(sliderBlueColor.value)
        changeColor()
    }
    

}

// Так и не понял как установить констрейнты между слайдером и лейблом 




