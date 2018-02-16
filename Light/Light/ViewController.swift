//
//  ViewController.swift
//  Light
//
//  Created by Joe Sturzenegger on 2/12/18.
//  Copyright © 2018 Joe Sturzenegger. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    updateUI()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  var lightOn = false
  
  @IBAction func buttonPressed(_ sender: Any) {
    lightOn = !lightOn
    updateUI()
  }
  
  func updateUI()
  {
    view.backgroundColor = lightOn ? .white : .black
    toggleTorch(on: lightOn)
  }
  
  func toggleTorch(on: Bool) {
    guard let device = AVCaptureDevice.default(for: .video) else { return }
    
    if device.hasTorch
    {
      do
      {
        try device.lockForConfiguration()
        
        if on == true
        {
          device.torchMode = .on
        }
        else
        {
          device.torchMode = .off
        }
        device.unlockForConfiguration()
      }
      catch
      {
        print("Torch could not be used")
      }
    }
    else
    {
      print("Torch is not available")
    }
  }
  
}

