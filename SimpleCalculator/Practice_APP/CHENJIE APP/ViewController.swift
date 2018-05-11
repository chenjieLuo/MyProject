//
//  ViewController.swift
//  CHENJIE APP
//
//  Created by 罗谌杰 on 5/10/18.
//  Copyright © 2018 罗谌杰. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numOnScreen:Double = 0;
    var previousNum:Double = 0;
    var performingMath = false;
    var operation = 0;
    
    @IBOutlet weak var Label: UILabel!

    @IBAction func numbers(_ sender: UIButton) {
        if performingMath == true{
            Label.text = String(sender.tag-1)
            numOnScreen = Double(Label.text!)!
            performingMath = false
        }
        else{
        Label.text = Label.text! + String(sender.tag-1)
        numOnScreen = Double(Label.text!)!
        }
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if Label.text != "" && sender.tag != 11 && sender.tag != 16{
            
            previousNum = Double(Label.text!)!
            
            if sender.tag == 12{        //divide
                Label.text = "/";

            }
            else if sender.tag == 13{        //multiply
                Label.text = "x";

            }
            else if sender.tag == 14{        //plus
                Label.text = "+";

            }
            else if sender.tag == 15{        //substract
                Label.text = "-";
            }
            operation = sender.tag;
            performingMath = true;
        }
        else if sender.tag == 16{
            if operation == 12{
                Label.text = String(previousNum / numOnScreen)
            }
            else if operation == 13{
                Label.text = String(previousNum * numOnScreen)
            }
            else if operation == 14{
                Label.text = String(previousNum + numOnScreen)
            }
            else if operation == 15{
                Label.text = String(previousNum - numOnScreen)
            }
        }
        else if sender.tag == 11{
            Label.text = "" ;
            previousNum = 0;
            numOnScreen = 0;
            operation = 0;
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

