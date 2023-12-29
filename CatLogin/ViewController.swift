//
//  ViewController.swift
//  CatLogin
//
//  Created by Sami Ahmed on 30/12/2023.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Variables
    private var isPasswordHidden = true
    let trailingButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(systemName:"eye.slash"), for: .normal)
        button.tintColor = UIColor.black
        return button
    }()
    
    //MARK: - IBOutlet
    @IBOutlet var logoImageView: UIImageView!
    @IBOutlet var numberTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    //MARK: - viewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        logoImageView.heightAnchor.constraint(equalTo: logoImageView.widthAnchor, multiplier: 0.5).isActive = true
        setupTrailingButton()
    }
    
    //MARK: - IBAction
    @IBAction func fbLogin(_ sender: Any) {
    }
    
    @IBAction func googleLogin(_ sender: Any) {
    }
    
    @IBOutlet var signupButton: UILabel!
    
    
    //MARK: - Functions
    
    private func setupTrailingButton() {
        trailingButton.addTarget(self, action: #selector(togglePasswordVisibility), for: .touchUpInside)
        trailingButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 5)

        passwordTextField.rightView = trailingButton
        passwordTextField.rightViewMode = .always
    }
    
    @objc private func togglePasswordVisibility() {
        isPasswordHidden.toggle()
        let imageName = isPasswordHidden ? "eye.slash" : "eye"
        trailingButton.setImage(UIImage(systemName: imageName), for: .normal)
        passwordTextField.isSecureTextEntry = isPasswordHidden
    }
}
