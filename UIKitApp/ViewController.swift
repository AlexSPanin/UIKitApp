//
//  ViewController.swift
//  UIKitApp
//
//  Created by Александр Панин on 09.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentControl: UISegmentedControl!
    @IBOutlet var mainLabel: UILabel!
    @IBOutlet var slider: UISlider!
    @IBOutlet var button: UIButton!
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        mainLabel.font = mainLabel.font.withSize(12)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        
        segmentControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        slider.value = 0
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .green
        slider.maximumTrackTintColor = .red
        slider.thumbTintColor = .blue
        
        mainLabel.text = String(slider.value)
    }

    @IBAction func segmentControlAction(_ sender: Any) {
        
        switch segmentControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = "The First Segment Selected"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "The Second Segment Selected"
            mainLabel.textColor = .blue
        default:
            mainLabel.text = "The Third Segment Selected"
            mainLabel.textColor = .yellow
        }
    }
    
    @IBAction func sliderAction(_ sender: Any) {
        mainLabel.text = String(slider.value)
        let sliderValue = CGFloat(slider.value)
        view.backgroundColor = view.backgroundColor?.withAlphaComponent (sliderValue)
    }
    @IBAction func buttonAction() {
        guard let inputText = textField.text, !inputText.isEmpty else {
            print ("Empty")
            return
        }
        if let _ = Double(inputText) {
            print ("Number")
            return
        }
        mainLabel.text = textField.text
        
    }
}

