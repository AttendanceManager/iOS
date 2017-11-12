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
        
        var passcode = userEnteredCode
        
        var place1Dict = [  "0":"1",
                            "1":"2",
                            "2":"3",
                            "3":"4",
                            "4":"5",
                            "5":"6",
                            "6":"7",
                            "7":"8",
                            "8":"9",
                            "9":":"
        ]
        var place2Dict = [  "0":".",
                            "1":"/",
                            "2":"0",
                            "3":"1",
                            "4":"2",
                            "5":"3",
                            "6":"4",
                            "7":"5",
                            "8":"6",
                            "9":"7"
        ]
        var place3Dict = [  "0":"3",
                            "1":"4",
                            "2":"5",
                            "3":"6",
                            "4":"7",
                            "5":"8",
                            "6":"9",
                            "7":":",
                            "8":";",
                            "9":"<"
        ]
        var place4Dict = [  "0":",",
                            "1":"-",
                            "2":".",
                            "3":"/",
                            "4":"0",
                            "5":"1",
                            "6":"2",
                            "7":"3",
                            "8":"4",
                            "9":"5"
        ]
        
        
        var deviceName = ""
        
        deviceName += ("!!"+userRollNumber+"#V#")
        
        var count = 1
        
        for chrc in passcode.characters{
            if(count == 1){
                deviceName += (place1Dict[String(chrc)]!)
            }else if(count == 2){
                deviceName += (place2Dict[String(chrc)]!)
            }else if(count == 3){
                deviceName += (place3Dict[String(chrc)]!)
            }else if(count == 4){
                deviceName += (place4Dict[String(chrc)]!)
            }
            count += 1
        }
        
        deviceName += "#"
        
        generatedDeviceName = deviceName
    }
    
    
    @IBAction func finishAttendanceButtonClicked(_ sender: Any) {
        
    }
    
    
}
