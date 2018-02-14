//
//  ViewController.swift
//  Light
//
//  Created by Joe Sturzenegger on 2/12/18.
//  Copyright © 2018 Joe Sturzenegger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    updateUI()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  var lightOn = true
  
  @IBAction func buttonPressed(_ sender: Any) {
    lightOn = !lightOn
    updateUI()
  }
  
  func updateUI()
  {
    view.backgroundColor = lightOn ? .white : .black
  }
}

