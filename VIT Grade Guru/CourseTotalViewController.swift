//
//  CourseTotalViewController.swift
//  VIT Grade Guru
//
//  Created by Likhit Garimella on 23/03/20.
//  Copyright © 2020 Likhit Garimella. All rights reserved.
//

import UIKit

class CourseTotalViewController: UIViewController {
    
    @IBOutlet var topBar: UIView!
    
    @IBOutlet var labSwitch: UISwitch!
    @IBOutlet var projectSwitch: UISwitch!
    @IBOutlet var cat1: UITextField!
    @IBOutlet var cat2: UITextField!
    @IBOutlet var da1: UITextField!
    @IBOutlet var da2: UITextField!
    @IBOutlet var da3: UITextField!
    @IBOutlet var fat: UITextField!
    @IBOutlet var lab: UITextField!
    @IBOutlet var labLabel: UILabel!
    @IBOutlet var project: UITextField!
    @IBOutlet var projectLabel: UILabel!
    @IBOutlet var buttonOutlet: UIButton!
    
    @IBOutlet var answer: UILabel!
    
    func Calculation() {
        
        if (cat1.text!.isEmpty || cat2.text!.isEmpty || da1.text!.isEmpty || da2.text!.isEmpty || da3.text!.isEmpty || fat.text!.isEmpty) {
            // Alert
            let myAlert = UIAlertController(title: "Alert", message: "Empty Fields", preferredStyle: UIAlertController.Style.alert)
            let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
            myAlert.addAction(okAction)
            self.present(myAlert, animated: true, completion: nil)
            return
        }   // If 1st 6 fields are empty
            
        else {
            
        if labSwitch.isOn==true && projectSwitch.isOn==true {
            if (lab.text!.isEmpty || project.text!.isEmpty)
            {
                // Alert
                let myAlert = UIAlertController(title: "Alert", message: "Empty Fields", preferredStyle: UIAlertController.Style.alert)
                let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
                myAlert.addAction(okAction)
                self.present(myAlert, animated: true, completion: nil)
                return
            }   // If Lab and Project Fields are empty
            else {
            answer.text = String( Double( (( ((3*(Double(cat1.text!)! + Double(cat2.text!)!))/10) + Double(da1.text!)! + Double(da2.text!)! + Double(da3.text!)! + (2*(Double(fat.text!)!))/5 )/2) ) + Double( (Double(lab.text!)!)/4 ) + Double( (Double(project.text!)!)/4 ) )
            }   // If Lab and Project Fields aren't empty
        }   // If both Lab and Project Switches are On
        
        if labSwitch.isOn==true && projectSwitch.isOn==false {
            if (lab.text!.isEmpty)
            {
                // Alert
                let myAlert = UIAlertController(title: "Alert", message: "Empty Lab Field", preferredStyle: UIAlertController.Style.alert)
                let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
                myAlert.addAction(okAction)
                self.present(myAlert, animated: true, completion: nil)
                return
            }   // If Lab Field is empty
            else {
                answer.text = String( Double( (3*( ((3*(Double(cat1.text!)! + Double(cat2.text!)!))/10) + Double(da1.text!)! + Double(da2.text!)! + Double(da3.text!)! + (2*(Double(fat.text!)!))/5 )/4 ) ) + Double( (Double(lab.text!)!)/4 ) )
            }   // If Lab Field isn't empty
        }   // If Lab Switch is On and Project Switche is Off
            
        if labSwitch.isOn==false && projectSwitch.isOn==true {
            if (project.text!.isEmpty)
            {
                // Alert
                let myAlert = UIAlertController(title: "Alert", message: "Empty Project Field", preferredStyle: UIAlertController.Style.alert)
                let okAction = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
                myAlert.addAction(okAction)
                self.present(myAlert, animated: true, completion: nil)
                return
            }   // If Project Field is empty
            else {
                answer.text = String( Double( (3*( ((3*(Double(cat1.text!)! + Double(cat2.text!)!))/10) + Double(da1.text!)! + Double(da2.text!)! + Double(da3.text!)! + (2*(Double(fat.text!)!))/5 )/4 ) ) + Double( (Double(project.text!)!)/4 ) )
            }   // If Project Field isn't empty
        }   // If Lab Switch is Off and Project Switche is On
            
        if labSwitch.isOn==false && projectSwitch.isOn==false {
            answer.text = String( Double( ( ((3*(Double(cat1.text!)! + Double(cat2.text!)!))/10) + Double(da1.text!)! + Double(da2.text!)! + Double(da3.text!)! + (2*(Double(fat.text!)!))/5 ) ) )
        }   // If both Lab and Project Switches are Off
            
        }   // If 1st 6 fields aren't empty
        
    }   // Entire Calculation Function
    
    /* //////////////////////////////////////////////////////////////////////////////// */
    
    // Function For Autoset Validation For TextFields
    func Autoset() {
        
        cat1.keyboardType = .numberPad
        cat1.text = "\(self.cat1number)"
        cat1.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        cat2.keyboardType = .numberPad
        cat2.text = "\(self.cat2number)"
        cat2.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        da1.keyboardType = .numberPad
        da1.text = "\(self.da1number)"
        da1.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        da2.keyboardType = .numberPad
        da2.text = "\(self.da2number)"
        da2.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        da3.keyboardType = .numberPad
        da3.text = "\(self.da3number)"
        da3.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        fat.keyboardType = .numberPad
        fat.text = "\(self.fatnumber)"
        fat.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        lab.keyboardType = .numberPad
        lab.text = "\(self.labnumber)"
        lab.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
        project.keyboardType = .numberPad
        project.text = "\(self.projectnumber)"
        project.addTarget(self, action: #selector(didChangeText), for: .allEditingEvents)
        
    }
    
    // Autoset Validation For TextFields
    var cat1number: Double = 0 {
        didSet {
            if cat1number > 50.0 {
                cat1number = 50.0
                self.cat1.text = "\(cat1number)"
            }
        }
    }
    var cat2number: Double = 0 {
        didSet {
            if cat2number > 50.0 {
                cat2number = 50.0
                self.cat2.text = "\(cat2number)"
            }
        }
    }
    var da1number: Double = 0 {
        didSet {
            if da1number > 10.0 {
                da1number = 10.0
                self.da1.text = "\(da1number)"
            }
        }
    }
    var da2number: Double = 0 {
        didSet {
            if da2number > 10.0 {
                da2number = 10.0
                self.da2.text = "\(da2number)"
            }
        }
    }
    var da3number: Double = 0 {
        didSet {
            if da3number > 10.0 {
                da3number = 10.0
                self.da3.text = "\(da3number)"
            }
        }
    }
    var fatnumber: Double = 0 {
        didSet {
            if fatnumber > 100.0 {
                fatnumber = 100.0
                self.fat.text = "\(fatnumber)"
            }
        }
    }
    var labnumber: Double = 0 {
        didSet {
            if labnumber > 100.0 {
                labnumber = 100.0
                self.lab.text = "\(labnumber)"
            }
        }
    }
    var projectnumber: Double = 0 {
        didSet {
            if projectnumber > 100.0 {
                projectnumber = 100.0
                self.project.text = "\(projectnumber)"
            }
        }
    }
    
    // ObjC Function For Autoset Validation For TextFields
    @objc func didChangeText() {
        if let num1 = Double(self.cat1.text!) {
            self.cat1number = num1
        }
        if let num2 = Double(self.cat2.text!) {
            self.cat2number = num2
        }
        if let num3 = Double(self.da1.text!) {
            self.da1number = num3
        }
        if let num4 = Double(self.da2.text!) {
            self.da2number = num4
        }
        if let num5 = Double(self.da3.text!) {
            self.da3number = num5
        }
        if let num6 = Double(self.fat.text!) {
            self.fatnumber = num6
        }
        if let num7 = Double(self.lab.text!) {
            self.labnumber = num7
        }
        if let num8 = Double(self.project.text!) {
            self.projectnumber = num8
        }
    }
    
    /* //////////////////////////////////////////////////////////////////////////////// */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hideKeyboardWhenTappedAround()
        
        // Autoset Validation For TextFields
        Autoset()
        
        // TopBar UIView Properties
        TopBar()
        
        // Textfield Properties
        CornerRadius()
        
        // Button Properties
        ButtonProp()

    }
    
    func TopBar() {
        
        // TopBar UIView Properties
        topBar.layer.masksToBounds = false
        topBar.layer.shadowRadius = 1
        topBar.layer.shadowOpacity = 0.5
        topBar.layer.shadowColor = UIColor.gray.cgColor
        topBar.layer.shadowOffset = CGSize(width: 0, height: 2)
        
    }
    
    func CornerRadius() {
        
        // Textfield Properties
        cat1.layer.cornerRadius = 6
        cat2.layer.cornerRadius = 6
        da1.layer.cornerRadius = 6
        da2.layer.cornerRadius = 6
        da3.layer.cornerRadius = 6
        fat.layer.cornerRadius = 6
        lab.layer.cornerRadius = 6
        project.layer.cornerRadius = 6

    }
    
    func ButtonProp() {
        
        // Button Properties
        buttonOutlet.backgroundColor = .systemBlue
        buttonOutlet.layer.cornerRadius = 6
        //buttonOutlet.layer.borderWidth = 1
        //buttonOutlet.layer.borderColor = UIColor.darkGray.cgColor
        
    }
    
    @IBAction func enableLab(_ sender: UISwitch) {
        
        if labSwitch.isOn==true {
            labLabel.isHidden=false
            lab.isHidden=false
        }
        if labSwitch.isOn==false {
            labLabel.isHidden=true
            lab.isHidden=true
        }
        
    }
    
    @IBAction func enableProject(_ sender: UISwitch) {
        
        if projectSwitch.isOn==true {
            projectLabel.isHidden=false
            project.isHidden=false
        }
        if projectSwitch.isOn==false {
            projectLabel.isHidden=true
            project.isHidden=true
        }
        
    }
    
    @IBAction func button(_ sender: UIButton) {
        
        Calculation()
        
    }
    
}
