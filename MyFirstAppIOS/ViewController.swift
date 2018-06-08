//
//  ViewController.swift
//  MyFirstAppIOS
//
//  Created by Leanne McGuinness on 15/05/2018.
//  Copyright © 2018 Leanne McGuinness. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
    
    @IBAction func emailNotifactionSwitchTapped(_ sender: UISwitch) {
        
        if(emailNotificationToggle.isOn){
            print("Notifications on")
        } else {
            print("Notifications off")
        }
    }
    
    @IBAction func saveButton(_ sender: Any) {
        print("Save Button Tapped")
        print(nameText.text!)
        print(emailText.text!)
        print(passwordText.text!)
        
        print("DOB: \(Int(dayValue)) / \(Int(monthValue)) / \(Int(yearValue))")
        print("Notifications: ")
        
    }
    
    
    @IBAction func chooseFavLanguageTapped(_ sender: UISegmentedControl) {
        
        if favouriteLanguageSegmentControl.selectedSegmentIndex == 0 {
            print("sWIFT")
        } else if favouriteLanguageSegmentControl.selectedSegmentIndex == 1 {
            print("java")
            
        }
        
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

