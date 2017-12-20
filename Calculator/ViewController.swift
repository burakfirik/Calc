//
//  ViewController.swift
//  Calculator
//
//  Created by Burak Firik on 12/16/17.
//  Copyright © 2017 Burak Firik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var cur = 0
  var prev = 0
  var prevAssigned = false
  var lastOperPressed = false
  var oper = ""
  var lastEqual = false
  @IBOutlet weak var resultLabel: UILabel!
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  @IBAction func buttonPressed(_ sender: UIButton) {
    
    //var current = Double(resultLabel.text!)
    if lastOperPressed && sender.tag >= 14 && sender.tag <= 17 {
      oper = sender.titleLabel?.text as! String
    } else if (sender.tag == 0) {
      if (cur != 0) {
        cur *= 10
      }
      lastOperPressed = false
      resultLabel.text = "\(cur)"
      lastEqual = false
      
    } else if (sender.tag == 1) {
      cur = cur * 10 + 1
      lastOperPressed = false
      resultLabel.text = "\(cur)"
      lastEqual = false
    } else if (sender.tag == 2) {
      cur = cur * 10 + 2
      lastOperPressed = false
      resultLabel.text = "\(cur)"
      lastEqual = false
    } else if (sender.tag == 3) {
      cur = cur * 10 + 3
      lastOperPressed = false
      resultLabel.text = "\(cur)"
      lastEqual = false
    } else if (sender.tag == 4) {
      cur = cur * 10 + 4
      lastOperPressed = false
      resultLabel.text = "\(cur)"
      lastEqual = false
    } else if (sender.tag == 5) {
      cur = cur * 10 + 5
      lastOperPressed = false
      resultLabel.text = "\(cur)"
      lastEqual = false
    } else if (sender.tag == 6) {
      cur = cur * 10 + 6
      lastOperPressed = false
      resultLabel.text = "\(cur)"
     lastEqual = false
    } else if (sender.tag == 7) {
      cur = cur * 10 + 7
      lastOperPressed = false
      resultLabel.text = "\(cur)"
      lastEqual = false
    } else if (sender.tag == 8) {
      cur = cur * 10 + 8
      lastOperPressed = false
      resultLabel.text = "\(cur)"
      lastEqual = false
    } else if (sender.tag == 9) {
      cur = cur * 10 + 9
      lastOperPressed = false
      resultLabel.text = "\(cur)"
      lastEqual = false
    } else if (sender.tag == 10) {
      cur = 0
      prev = 0
      lastEqual = false
      prevAssigned = false
      resultLabel.text = "\(cur)"
      // Division
    } else if (sender.tag == 14) {
      if (prevAssigned) {
        if oper == "/" {
          if cur != 0 {
            prev = prev / cur
          } else {
            prev = 0
          }

        } else if oper == "+" {
          prev = prev + cur
        } else if oper == "-" {
          prev = prev - cur
        } else if oper == "X" {
          prev = prev * cur
        }
        resultLabel.text = "\(prev)"
      } else {
        if !lastEqual {
          prev = cur
          resultLabel.text = "\(prev)"
        }
      }
      lastOperPressed = true
      lastEqual = false
      oper = "/"
      cur = 0
      prevAssigned = true
    } else if (sender.tag == 15) {
      if (prevAssigned) {
        if oper == "/" {
          if cur != 0 {
            prev = prev / cur
          } else {
            prev = 0
          }
        } else if oper == "+" {
          prev = prev + cur
        } else if oper == "-" {
          prev = prev - cur
        } else if oper == "X" {
          prev = prev * cur
        }
        resultLabel.text = "\(prev)"
      } else {
        if !lastEqual {
          prev = cur
          resultLabel.text = "\(prev)"
        }
      }
      lastOperPressed = true
      lastEqual = false
      oper = "X"
      cur = 0
      prevAssigned = true
    } else if (sender.tag == 16) {
      if (prevAssigned) {
        if oper == "/" {
          if cur != 0 {
            prev = prev / cur
          } else {
            prev = 0
          }
        } else if oper == "+" {
          prev = prev + cur
        } else if oper == "-" {
          prev = prev - cur
        } else if oper == "X" {
          prev = prev * cur
        }
        resultLabel.text = "\(prev)"
      } else {
        if !lastEqual {
          prev = cur
          resultLabel.text = "\(prev)"
        }
      }
       lastOperPressed = true
      lastEqual = false
      oper = "-"
      cur = 0
      prevAssigned = true
    } else if (sender.tag == 17) {
      if (prevAssigned) {
        if oper == "/" {
          if cur != 0 {
            prev = prev / cur
          } else {
            prev = 0
          }
        } else if oper == "+" {
          prev = prev + cur
        } else if oper == "-" {
          prev = prev - cur
        } else if oper == "X" {
          prev = prev * cur
        }
        resultLabel.text = "\(prev)"
      } else {
        if !lastEqual {
          prev = cur
          resultLabel.text = "\(prev)"
        }
      }
       lastOperPressed = true
      lastEqual = false
      oper = "+"
      cur = 0
      prevAssigned = true
    } else if (sender.tag == 18) {
      if !lastEqual {
        if (prevAssigned) {
          if oper == "/" {
            if cur != 0 {
              prev = prev / cur
            } else {
              prev = 0
            }
          } else if oper == "+" {
            prev = prev + cur
          } else if oper == "-" {
            prev = prev - cur
          } else if oper == "X" {
            prev = prev * cur
          }
          resultLabel.text = "\(prev)"
        } else {
          prev = cur
          resultLabel.text = "\(cur)"
        }
        cur = 0
        prevAssigned = false
        lastEqual = true
      }
    }
    
  }
  
  
}

