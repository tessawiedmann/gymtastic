//
//  ViewController.swift
//  Gymtastic2
//
//  Created by Olivia Wiedmann on 12/3/16.
//  Copyright © 2016 Tessa Wiedmann. All rights reserved.
//

import UIKit

class NewMeetViewController: UIViewController, UITextFieldDelegate {
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var meet: Meet?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        //Handle the text field's user input through delegate callbacks
        nameTextField.delegate = self
        
        checkValidName()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        saveButton.isEnabled = false
    }
    
    func checkValidName() {
        let text = nameTextField.text ?? ""
        saveButton.isEnabled = !text.isEmpty
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        checkValidName()
    }
    
    
    //MARK: Navigation
    
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let barButton = sender as? UIBarButtonItem {
            if saveButton == barButton {
                let name = nameTextField.text ?? ""
                let date = datePicker.date
                //let date = dateTextField.text ?? ""
                meet = Meet(name: name, date: date)
            }
        }
    }
    
    //MARK: Actions
    

}

