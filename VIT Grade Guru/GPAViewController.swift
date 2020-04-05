//
//  GPAViewController.swift
//  VIT Grade Guru
//
//  Created by Likhit Garimella on 19/03/20.
//  Copyright © 2020 Likhit Garimella. All rights reserved.
//

import UIKit

class GPAViewController: UIViewController {
    
    // Outlets
    @IBOutlet var topBar: UIView!
    @IBOutlet var VIT: UILabel!
    @IBOutlet var Grade: UILabel!
    @IBOutlet var Guru: UILabel!
    
    @IBOutlet var credits01: DropDown!
    @IBOutlet var credits02: DropDown!
    @IBOutlet var credits03: DropDown!
    @IBOutlet var credits04: DropDown!
    @IBOutlet var credits05: DropDown!
    @IBOutlet var credits06: DropDown!
    @IBOutlet var credits07: DropDown!
    @IBOutlet var credits08: DropDown!
    @IBOutlet var credits09: DropDown!
    @IBOutlet var credits10: DropDown!
    @IBOutlet var credits11: DropDown!
    
    @IBOutlet var grade01: DropDown!
    @IBOutlet var grade02: DropDown!
    @IBOutlet var grade03: DropDown!
    @IBOutlet var grade04: DropDown!
    @IBOutlet var grade05: DropDown!
    @IBOutlet var grade06: DropDown!
    @IBOutlet var grade07: DropDown!
    @IBOutlet var grade08: DropDown!
    @IBOutlet var grade09: DropDown!
    @IBOutlet var grade10: DropDown!
    @IBOutlet var grade11: DropDown!
    @IBOutlet var gpaButtonOutlet: UIButton!
    
    // Function for calculations
    func Calculations() {
        
        // String to Double conversions &
        // Grabbing double value from given string
        let string1 = credits01.text!
        var number1 = Double(string1.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let string2 = credits02.text!
        var number2 = Double(string2.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let string3 = credits03.text!
        var number3 = Double(string3.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let string4 = credits04.text!
        var number4 = Double(string4.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let string5 = credits05.text!
        var number5 = Double(string5.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let string6 = credits06.text!
        var number6 = Double(string6.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let string7 = credits07.text!
        var number7 = Double(string7.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let string8 = credits08.text!
        var number8 = Double(string8.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let string9 = credits09.text!
        var number9 = Double(string9.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let string10 = credits10.text!
        var number10 = Double(string10.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let string11 = credits11.text!
        var number11 = Double(string11.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        
        let stringA = grade01.text!
        var numberA = Double(stringA.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let stringB = grade02.text!
        var numberB = Double(stringB.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let stringC = grade03.text!
        var numberC = Double(stringC.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let stringD = grade04.text!
        var numberD = Double(stringD.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let stringE = grade05.text!
        var numberE = Double(stringE.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let stringF = grade06.text!
        var numberF = Double(stringF.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let stringG = grade07.text!
        var numberG = Double(stringG.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let stringH = grade08.text!
        var numberH = Double(stringH.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let stringI = grade09.text!
        var numberI = Double(stringI.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let stringJ = grade10.text!
        var numberJ = Double(stringJ.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        let stringK = grade11.text!
        var numberK = Double(stringK.components(separatedBy: CharacterSet.decimalDigits.inverted).joined())
        
            // Credits Textfield Validation
            if (credits01.text!.isEmpty) {
               number1 = 0
            }
            if (credits02.text!.isEmpty) {
               number2 = 0
            }
            if (credits03.text!.isEmpty) {
               number3 = 0
            }
            if (credits04.text!.isEmpty) {
               number4 = 0
            }
            if (credits05.text!.isEmpty) {
               number5 = 0
            }
            if (credits06.text!.isEmpty) {
               number6 = 0
            }
            if (credits07.text!.isEmpty) {
               number7 = 0
            }
            if (credits08.text!.isEmpty) {
               number8 = 0
            }
            if (credits09.text!.isEmpty) {
               number9 = 0
            }
            if (credits10.text!.isEmpty) {
               number10 = 0
            }
            if (credits11.text!.isEmpty) {
               number11 = 0
            }
            
            // Grades Textfield Validation
            if (grade01.text!.isEmpty) {
               numberA = 0
            }
            if (grade02.text!.isEmpty) {
               numberB = 0
            }
            if (grade03.text!.isEmpty) {
               numberC = 0
            }
            if (grade04.text!.isEmpty) {
               numberD = 0
            }
            if (grade05.text!.isEmpty) {
               numberE = 0
            }
            if (grade06.text!.isEmpty) {
               numberF = 0
            }
            if (grade07.text!.isEmpty) {
               numberG = 0
            }
            if (grade08.text!.isEmpty) {
               numberH = 0
            }
            if (grade09.text!.isEmpty) {
               numberI = 0
            }
            if (grade10.text!.isEmpty) {
               numberJ = 0
            }
            if (grade11.text!.isEmpty) {
               numberK = 0
            }
            
            // Denominator Validation
            if (credits01.text!.isEmpty && credits02.text!.isEmpty && credits03.text!.isEmpty && credits04.text!.isEmpty && credits05.text!.isEmpty && credits06.text!.isEmpty && credits07.text!.isEmpty && credits08.text!.isEmpty && credits09.text!.isEmpty && credits10.text!.isEmpty && credits11.text!.isEmpty)
            {
                answer.text = "0.00" // when credits textfield input given, and leave grade textfield empty, calculations being done, and displayed double value 0.00
                // hence even when credits textfield is left empty, display value "0.00"
            } else {
            
            // Actual Formula
            answer.text = String(format: "%.2f", ((number1!*numberA!)+(number2!*numberB!)+(number3!*numberC!)+(number4!*numberD!)+(number5!*numberE!)+(number6!*numberF!)+(number7!*numberG!)+(number8!*numberH!)+(number9!*numberI!)+(number10!*numberJ!)+(number11!*numberK!))/(number1!+number2!+number3!+number4!+number5!+number6!+number7!+number8!+number9!+number10!+number11!))
            }
            
        }       // Entire Calculations Function
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        self.hideKeyboardWhenTappedAround()
        
        // TopBar UIView Properties
        TopBar()
        
        // Underline for TextField
        UnderlineTextField()
        
        // Textfield Properties
        CornerRadius()
        
        // DropDown Options For TextFields
        DropDownOptions()
        
        // Create a padding view for padding on LEFT
        LeftPadding()
        
        // Button Properties
        ButtonProp()
        
        // PopUp UIView Properties
        PopUpProp()
        
    }
    
    func TopBar() {
        
        // TopBar UIView Properties
        topBar.layer.masksToBounds = false
        topBar.layer.shadowRadius = 1
        topBar.layer.shadowOpacity = 0.5
        topBar.layer.shadowColor = UIColor.gray.cgColor
        topBar.layer.shadowOffset = CGSize(width: 0, height: 2)
        VIT.textColor = UIColor(red: 58/255.0, green: 98/255.0, blue: 130/255.0, alpha: 1.0)
        Grade.textColor = UIColor(red: 58/255.0, green: 98/255.0, blue: 130/255.0, alpha: 1.0)
        Guru.textColor = UIColor(red: 58/255.0, green: 98/255.0, blue: 130/255.0, alpha: 1.0)
        
    }
    
    func UnderlineTextField() {
        
        // Underline for TextField
        credits01.setUnderLine()
        credits02.setUnderLine()
        credits03.setUnderLine()
        credits04.setUnderLine()
        credits05.setUnderLine()
        credits06.setUnderLine()
        credits07.setUnderLine()
        credits08.setUnderLine()
        credits09.setUnderLine()
        credits10.setUnderLine()
        credits11.setUnderLine()
        
        grade01.setUnderLine()
        grade02.setUnderLine()
        grade03.setUnderLine()
        grade04.setUnderLine()
        grade05.setUnderLine()
        grade06.setUnderLine()
        grade07.setUnderLine()
        grade08.setUnderLine()
        grade09.setUnderLine()
        grade10.setUnderLine()
        grade11.setUnderLine()
        
    }
    
    func CornerRadius() {
        
        // Credits Textfield Properties
        credits01.layer.cornerRadius = 10
        credits02.layer.cornerRadius = 10
        credits03.layer.cornerRadius = 10
        credits04.layer.cornerRadius = 10
        credits05.layer.cornerRadius = 10
        credits06.layer.cornerRadius = 10
        credits07.layer.cornerRadius = 10
        credits08.layer.cornerRadius = 10
        credits09.layer.cornerRadius = 10
        credits10.layer.cornerRadius = 10
        credits11.layer.cornerRadius = 10
        
        // Grades Textfield Properties
        grade01.layer.cornerRadius = 10
        grade02.layer.cornerRadius = 10
        grade03.layer.cornerRadius = 10
        grade04.layer.cornerRadius = 10
        grade05.layer.cornerRadius = 10
        grade06.layer.cornerRadius = 10
        grade07.layer.cornerRadius = 10
        grade08.layer.cornerRadius = 10
        grade09.layer.cornerRadius = 10
        grade10.layer.cornerRadius = 10
        grade11.layer.cornerRadius = 10
        
    }
    
    func DropDownOptions() {
        
        // DropDown Options For Credits TextFields
        credits01.optionArray = ["1 credit", "2 credits", "3 credits", "4 credits", "5 credits", "6 credits", "7 credits", "8 credits", "9 credits", "10 credits"]
        credits01.selectedRowColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1.0)
        
        credits02.optionArray = ["1 credit", "2 credits", "3 credits", "4 credits", "5 credits", "6 credits", "7 credits", "8 credits", "9 credits", "10 credits"]
        credits02.selectedRowColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1.0)
        
        credits03.optionArray = ["1 credit", "2 credits", "3 credits", "4 credits", "5 credits", "6 credits", "7 credits", "8 credits", "9 credits", "10 credits"]
        credits03.selectedRowColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1.0)
        
        credits04.optionArray = ["1 credit", "2 credits", "3 credits", "4 credits", "5 credits", "6 credits", "7 credits", "8 credits", "9 credits", "10 credits"]
        credits04.selectedRowColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1.0)
        
        credits05.optionArray = ["1 credit", "2 credits", "3 credits", "4 credits", "5 credits", "6 credits", "7 credits", "8 credits", "9 credits", "10 credits"]
        credits05.selectedRowColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1.0)
        
        credits06.optionArray = ["1 credit", "2 credits", "3 credits", "4 credits", "5 credits", "6 credits", "7 credits", "8 credits", "9 credits", "10 credits"]
        credits06.selectedRowColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1.0)
        
        credits07.optionArray = ["1 credit", "2 credits", "3 credits", "4 credits", "5 credits", "6 credits", "7 credits", "8 credits", "9 credits", "10 credits"]
        credits07.selectedRowColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1.0)
        
        credits08.optionArray = ["1 credit", "2 credits", "3 credits", "4 credits", "5 credits", "6 credits", "7 credits", "8 credits", "9 credits", "10 credits"]
        credits08.selectedRowColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1.0)
        
        credits09.optionArray = ["1 credit", "2 credits", "3 credits", "4 credits", "5 credits", "6 credits", "7 credits", "8 credits", "9 credits", "10 credits"]
        credits09.selectedRowColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1.0)
        
        credits10.optionArray = ["1 credit", "2 credits", "3 credits", "4 credits", "5 credits", "6 credits", "7 credits", "8 credits", "9 credits", "10 credits"]
        credits10.selectedRowColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1.0)
        
        credits11.optionArray = ["1 credit", "2 credits", "3 credits", "4 credits", "5 credits", "6 credits", "7 credits", "8 credits", "9 credits", "10 credits"]
        credits11.selectedRowColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1.0)
        
        
        // DropDown Options For Grades TextFields
        grade01.optionArray = ["S grade - 10", "A grade - 9", "B grade - 8", "C grade - 7", "D grade - 6", "E grade - 5", "F grade - 0"]
        grade01.selectedRowColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1.0)
        grade02.optionArray = ["S grade - 10", "A grade - 9", "B grade - 8", "C grade - 7", "D grade - 6", "E grade - 5", "F grade - 0"]
        grade02.selectedRowColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1.0)
        grade03.optionArray = ["S grade - 10", "A grade - 9", "B grade - 8", "C grade - 7", "D grade - 6", "E grade - 5", "F grade - 0"]
        grade03.selectedRowColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1.0)
        grade04.optionArray = ["S grade - 10", "A grade - 9", "B grade - 8", "C grade - 7", "D grade - 6", "E grade - 5", "F grade - 0"]
        grade04.selectedRowColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1.0)
        grade05.optionArray = ["S grade - 10", "A grade - 9", "B grade - 8", "C grade - 7", "D grade - 6", "E grade - 5", "F grade - 0"]
        grade05.selectedRowColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1.0)
        grade06.optionArray = ["S grade - 10", "A grade - 9", "B grade - 8", "C grade - 7", "D grade - 6", "E grade - 5", "F grade - 0"]
        grade06.selectedRowColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1.0)
        grade07.optionArray = ["S grade - 10", "A grade - 9", "B grade - 8", "C grade - 7", "D grade - 6", "E grade - 5", "F grade - 0"]
        grade07.selectedRowColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1.0)
        grade08.optionArray = ["S grade - 10", "A grade - 9", "B grade - 8", "C grade - 7", "D grade - 6", "E grade - 5", "F grade - 0"]
        grade08.selectedRowColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1.0)
        grade09.optionArray = ["S grade - 10", "A grade - 9", "B grade - 8", "C grade - 7", "D grade - 6", "E grade - 5", "F grade - 0"]
        grade09.selectedRowColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1.0)
        grade10.optionArray = ["S grade - 10", "A grade - 9", "B grade - 8", "C grade - 7", "D grade - 6", "E grade - 5", "F grade - 0"]
        grade10.selectedRowColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1.0)
        grade11.optionArray = ["S grade - 10", "A grade - 9", "B grade - 8", "C grade - 7", "D grade - 6", "E grade - 5", "F grade - 0"]
        grade11.selectedRowColor = UIColor(red: 220.0/255.0, green: 220.0/255.0, blue: 220.0/255.0, alpha: 1.0)

    }
    
    func LeftPadding() {
        
        // Create a padding view for Credits TextFields on LEFT
        credits01.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: credits01.frame.height))
        credits01.leftViewMode = .always
        credits02.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: credits02.frame.height))
        credits02.leftViewMode = .always
        credits03.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: credits03.frame.height))
        credits03.leftViewMode = .always
        credits04.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: credits04.frame.height))
        credits04.leftViewMode = .always
        credits05.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: credits05.frame.height))
        credits05.leftViewMode = .always
        credits06.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: credits06.frame.height))
        credits06.leftViewMode = .always
        credits07.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: credits07.frame.height))
        credits07.leftViewMode = .always
        credits08.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: credits08.frame.height))
        credits08.leftViewMode = .always
        credits09.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: credits09.frame.height))
        credits09.leftViewMode = .always
        credits10.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: credits10.frame.height))
        credits10.leftViewMode = .always
        credits11.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: credits11.frame.height))
        credits11.leftViewMode = .always
        
        // Create a padding view for Grades TextFields on LEFT
        grade01.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: grade01.frame.height))
        grade01.leftViewMode = .always
        grade02.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: grade02.frame.height))
        grade02.leftViewMode = .always
        grade03.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: grade03.frame.height))
        grade03.leftViewMode = .always
        grade04.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: grade04.frame.height))
        grade04.leftViewMode = .always
        grade05.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: grade05.frame.height))
        grade05.leftViewMode = .always
        grade06.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: grade06.frame.height))
        grade06.leftViewMode = .always
        grade07.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: grade07.frame.height))
        grade07.leftViewMode = .always
        grade08.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: grade08.frame.height))
        grade08.leftViewMode = .always
        grade09.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: grade09.frame.height))
        grade09.leftViewMode = .always
        grade10.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: grade10.frame.height))
        grade10.leftViewMode = .always
        grade11.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: grade11.frame.height))
        grade11.leftViewMode = .always
        
    }
    
    func ButtonProp() {
        
        // Button Properties
        gpaButtonOutlet.clipsToBounds = true
        gpaButtonOutlet.layer.cornerRadius = 6
        gpaButtonOutlet.backgroundColor = UIColor(red: 53/255.0, green: 163/255.0, blue: 251/255.0, alpha: 1.0)
        
    }
    
    @IBAction func calculateGpa(_ sender: UIButton) {
        
        sender.flash()
        
        Calculations()
        
        // PopUp Animation
        PopUpAnimation()
        
        AnimateIn(desiredView: blurView)    // This First
        AnimateIn(desiredView: popUpView)   // This Next
        
        ChangeImageInPopUpView()
        
        // Clear textfields after popup goes off
        ClearTextFields()
        
    }
    
    func ClearTextFields() {
        
        // Clear textfields after popup goes off
        self.credits01.text = ""
        self.credits02.text = ""
        self.credits03.text = ""
        self.credits04.text = ""
        self.credits05.text = ""
        self.credits06.text = ""
        self.credits07.text = ""
        self.credits08.text = ""
        self.credits09.text = ""
        self.credits10.text = ""
        self.credits11.text = ""
        
        self.grade01.text = ""
        self.grade02.text = ""
        self.grade03.text = ""
        self.grade04.text = ""
        self.grade05.text = ""
        self.grade06.text = ""
        self.grade07.text = ""
        self.grade08.text = ""
        self.grade09.text = ""
        self.grade10.text = ""
        self.grade11.text = ""
        
        //And to enable back for a new input in textfield
        self.credits01.isEnabled = true
        self.credits02.isEnabled = true
        self.credits03.isEnabled = true
        self.credits04.isEnabled = true
        self.credits05.isEnabled = true
        self.credits06.isEnabled = true
        self.credits07.isEnabled = true
        self.credits08.isEnabled = true
        self.credits09.isEnabled = true
        self.credits10.isEnabled = true
        self.credits11.isEnabled = true
        
        self.grade01.isEnabled = true
        self.grade02.isEnabled = true
        self.grade03.isEnabled = true
        self.grade04.isEnabled = true
        self.grade05.isEnabled = true
        self.grade06.isEnabled = true
        self.grade07.isEnabled = true
        self.grade08.isEnabled = true
        self.grade09.isEnabled = true
        self.grade10.isEnabled = true
        self.grade11.isEnabled = true
        
    }
    
    func PopUpAnimation() {
        
        blurView.bounds = self.view.bounds
        popUpView.bounds = CGRect(x: 0, y: 0, width: self.view.bounds.width*0.68, height: self.view.bounds.height*0.4)
        
    }
    
    // Animate in a specified view
    func AnimateIn(desiredView: UIView) {
        
        let backgroundView = self.view!
        
        // Attach our desired view to the screen
        backgroundView.addSubview(desiredView)
        
        // Sets the view's scaling to be 120%
        desiredView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        desiredView.alpha = 0
        desiredView.center = backgroundView.center
        // Animate from here ⬆️
        
        // To here ⬇️
        // Animate the effect
        UIView.animate(withDuration: 0.2, animations: {
            desiredView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            desiredView.alpha = 1
        })
        
    }
    
    // Animate out a specified view
    func AnimateOut(desiredView: UIView) {
        
       UIView.animate(withDuration: 0.2, animations: {
            desiredView.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
            desiredView.alpha = 1
       }, completion: { _ in
        // This code runs when when above AnimateOut animation is done
        desiredView.removeFromSuperview()
       })
        
    }
    
    // Popup view outlets
    @IBOutlet var blurView: UIVisualEffectView!
    
    @IBOutlet var popUpView: UIView!
    
    @IBOutlet var answer: UILabel!
    
    @IBOutlet var imagePop: UIImageView!
    
    @IBOutlet var labelDescription: UILabel!
    
    @IBOutlet var okOutlet: UIButton!
    
    func PopUpProp() {
        
        popUpView.layer.cornerRadius = 16
        imagePop.layer.cornerRadius = 16
        imagePop.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        okOutlet.layer.cornerRadius = 16
        okOutlet.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
    }
    
    func ChangeImageInPopUpView() {
        
        let outputString = answer.text!
        let outputNumber = Double(outputString)
        
        // if (90...100 ~= outputNumber) // Forgot to unwrap
        // if (outputNumber == 10) // Forgot to set bounds
        if (9...10 ~= outputNumber!) {
            imagePop.image = UIImage(named: "Group 1")
        }
        if (8..<9 ~= outputNumber!) {
            imagePop.image = UIImage(named: "Group 2")
        }
        if (7..<8 ~= outputNumber!) {
            imagePop.image = UIImage(named: "Group 3")
        }
        if (6..<7 ~= outputNumber!) {
            imagePop.image = UIImage(named: "Group 4")
        }
        if (0..<6 ~= outputNumber!) {
            imagePop.image = UIImage(named: "Group 5")
        }
        
        
        if ((outputNumber ?? 10) > 10) {
            answer.text = "Sorry! Not possible :("
        }
        if ((outputNumber ?? 0) < 0) {
            answer.text = "Sorry! Not possible :("
        }
        if (outputString == "nan") {
            answer.text = "Sorry! Not possible :("
        }
        
    }
    
    @IBAction func Ok(_ sender: UIButton) {
        
        sender.flash()
        
        AnimateOut(desiredView: popUpView)  // This First
        AnimateOut(desiredView: blurView)   // This Next
        
    }
    
}   // #588
