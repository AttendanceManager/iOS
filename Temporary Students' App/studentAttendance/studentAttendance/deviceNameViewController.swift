//
//  deviceNameViewController.swift
//  studentAttendance
//
//  Created by Shivanshu Chaudhary on 10/08/17.
//  Copyright © 2017 Shivanshu Chaudhary. All rights reserved.
//

import UIKit

class deviceNameViewController: UIViewController {

    
    @IBOutlet weak var generatedCodeTextField: UITextView!
    
    var userEnteredCode = ""
    var generatedDeviceName = ""
    var userRollNumber = "15BCS0074"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(userEnteredCode != ""){
            generateDeviceName()
        }
        else{
            generatedDeviceName = "Invalid Value Sent. Re-ENter"
        }
        generatedCodeTextField.text = generatedDeviceName
        
        
        // Do any additional setup after loading the view.
    }

    
    func generateDeviceName(){
        print(userEnteredCode)
        
        generatedDeviceName = userEnteredCode
    }
    
    
    @IBAction func finishAttendanceButtonClicked(_ sender: Any) {
        
    }
    
    
}
