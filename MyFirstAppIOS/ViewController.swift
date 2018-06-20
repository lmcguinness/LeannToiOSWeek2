//
//  ViewController.swift
//  MyFirstAppIOS
//
//  Created by Leanne McGuinness on 15/05/2018.
//  Copyright © 2018 Leanne McGuinness. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {


    // OUTLETS
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var nameText: UITextField!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var emailText: UITextField!
    @IBOutlet var passwordLabel: UILabel!
    @IBOutlet var passwordText: UITextField!
    @IBOutlet var DOBLabel: UILabel!
    @IBOutlet var dayLabel: UILabel!
    @IBOutlet var monthLabel: UILabel!
    @IBOutlet var yearLabel: UILabel!
    @IBOutlet var dayStepper: UIStepper!
    @IBOutlet var monthStepper: UIStepper!
    @IBOutlet var yearStepper: UIStepper!
    @IBOutlet var receiveNotifcationsLabel: UILabel!
    @IBOutlet var emailNotificationToggle: UISwitch!
    @IBOutlet var favouriteLanguageSegmentControl: UISegmentedControl!
    @IBOutlet var saveButtonLabel: UIButton!
    
    var dayValue: Double = 1
    var monthValue: Double = 1
    var yearValue: Double = 1990
    var favouriteLanguage: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = .red
        
        dayStepper.value = dayValue
        dayStepper.minimumValue = 1
        dayStepper.maximumValue = 31
        monthStepper.value = monthValue
        monthStepper.minimumValue = 1
        monthStepper.maximumValue = 12
        yearStepper.value = yearValue
        yearStepper.minimumValue = 1990
        yearStepper.maximumValue = 2018
        updateDOBValues()
        
        
    }

    func updateDOBValues() {
        dayLabel.text = "\(Int(dayValue))"
        monthLabel.text = "\(Int(monthValue))"
        yearLabel.text = "\(Int(yearValue))"
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == nameText {
            emailText.becomeFirstResponder()
        } else if textField == emailText {
            passwordText.becomeFirstResponder()
        } else {
            passwordText.resignFirstResponder()
            
        }
        return true
    }
    
    // IBACTIONS
    
    
    @IBAction func dayStepperTapped(_ sender: Any) {
        dayValue = dayStepper.value
        updateDOBValues()
    }
    
    @IBAction func monthStepperTapped(_ sender: Any) {
        monthValue = monthStepper.value
        updateDOBValues()
    }
    
    
    @IBAction func yearStepperTapped(_ sender: Any) {
        yearValue = yearStepper.value
        updateDOBValues()
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
        //print("Save Button Tapped")
        
        let nameValue = nameText.text
        let emailValue = emailText.text
        let passwordValue = passwordText.text
        
        if ((nameValue?.isEmpty)! || (emailValue?.isEmpty)! || (passwordValue?.isEmpty)!){
            
            let alert = UIAlertController(title: "Alert", message: "All Fields are required to be filled in", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .`default`, handler: { _ in
                NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
            
        } else {
            print(nameValue!, "\n", emailValue!,"\n",passwordValue!)
            
            print("DOB: \(Int(dayValue)) / \(Int(monthValue)) / \(Int(yearValue))")
            if emailNotificationToggle.isOn {
                print("Notifications: ON")
            } else {
                print("Notications: OFF")
            }
            
        }
   
        
    }
    
    
    @IBAction func chooseFavLanguageTapped(_ sender: UISegmentedControl) {
        
        if favouriteLanguageSegmentControl.selectedSegmentIndex == 0 {
            favouriteLanguage = "Swift"
        } else if favouriteLanguageSegmentControl.selectedSegmentIndex == 1 {
            favouriteLanguage = "Java"
        } else if favouriteLanguageSegmentControl.selectedSegmentIndex == 2 {
            favouriteLanguage = "Python"
        } else {
            favouriteLanguage = "Javascript"
        }
        print(favouriteLanguage)
        
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//    }
//
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

