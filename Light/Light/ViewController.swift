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
  
  @IBOutlet weak var lightButton: UIButton!
  
  var lightOn = true
  
  @IBAction func buttonPressed(_ sender: Any) {
    lightOn = !lightOn
    updateUI()
  }
  
  func updateUI()
  {
    if lightOn
    {
      view.backgroundColor = .white
      lightButton.setTitle("Off", for: .normal)
    }
    else
    {
      view.backgroundColor = .black
      lightButton.setTitle("On", for: .normal)
    }
  }
}

