//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Joe Sturzenegger on 4/7/18.
//  Copyright © 2018 Joe Sturzenegger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var toggle: UISwitch!
  @IBOutlet weak var slider: UISlider!
  @IBOutlet weak var button: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
  }

  @IBAction func buttonTapped(_ sender: UIButton) {
    print("Button was tapped!")
    if toggle.isOn
    {
      print("The swith is on!")
    }
    else
    {
      print("The switch is off!")
    }
    print("The slider is set to \(slider.value)!")
  }
  
  @IBAction func switchToggle(_ sender: UISwitch) {
    if sender.isOn
    {
      print("The swith is on!")
    }
    else
    {
      print("The switch is off!")
    }
  }
  
  @IBAction func sliderValueChanged(_ sender: UISlider) {
    print("The slider is set to \(sender.value)!")
  }
  
  @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
    if let text = sender.text {
      print(text)
    }
  }
  
  @IBAction func textChanged(_ sender: UITextField) {
    if let text = sender.text {
      print(text)
    }
  }
  
  @IBAction func respodToTapGesture(_ sender: UITapGestureRecognizer) {
    let location = sender.location(in: view)
    print(location)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

