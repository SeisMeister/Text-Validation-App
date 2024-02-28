//
//  ViewController.swift
//  Text Validation
//
//  Created by Cesar Fernandez on 2/27/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passWordTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var successView: UIStackView!
    @IBOutlet weak var errorView: UIStackView!
    @IBOutlet weak var introScreenView: UIStackView!
    
    let errorViewIsShowing = false
    let successViewIsShowing = false
    let introduceScreenViewIsShowing = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
            errorView.isHidden = true
            successView.isHidden = true
            introScreenView.isHidden = false
    }
    
    let specialSymbols = ["@",",","!","#","$","%","^","&","*","<",">","?","+","=","-"]
    
    @IBAction func submitButtonPressed(_ sender: UIButton) {
        if let password = passWordTextField.text {
            if containsSpecialSymbol(password) {
                showSuccessView()
            } else {
                showErrorView()
            }
    }
    
        func containsSpecialSymbol(_ password: String) -> Bool {
        for char in password {
            if specialSymbols.contains(String(char)) { return true }
            }
            return false
        }
        
        func showErrorView() {
            errorView.isHidden = false
            successView.isHidden = true
            introScreenView.isHidden = true
        }
        
        func showSuccessView() {
            errorView.isHidden = true
            successView.isHidden = false
            introScreenView.isHidden = true
        }
    }
}
