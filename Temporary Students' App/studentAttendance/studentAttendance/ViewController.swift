//
//  ViewController.swift
//  studentAttendance
//
//  Created by Shivanshu Chaudhary on 10/08/17.
//  Copyright © 2017 Shivanshu Chaudhary. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var codeGivenByTeacherField: UITextField!
    
    var codeGivenByTeacher = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! deviceNameViewController
        destinationVC.userEnteredCode = codeGivenByTeacher
    }
    
    @IBAction func generateDeviceNameClicked(_ sender: Any) {
        codeGivenByTeacher = codeGivenByTeacherField.text!
        if(codeGivenByTeacher != ""){
        performSegue(withIdentifier: "codeEnterToNameGenerator", sender: nil)
        }
    }
    


}

