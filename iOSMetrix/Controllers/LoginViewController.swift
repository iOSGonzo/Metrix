//
//  ViewController.swift
//  iOSMetrix
//
//  Created by Gonzalo Birrueta on 3/9/20.
//  Copyright © 2020 Gonzalo Birrueta. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        return stackView
    }()

        
    let logoImage: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "logo"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let userNameTextField: UITextField = {
        let field = UITextField()
        field.attributedPlaceholder = NSAttributedString(string: "Username",
                                                         attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.80)])
        field.isSecureTextEntry = false
        field.font = UIFont(name: "Helvetica-Light", size: 18)
        field.textColor = .white
        field.translatesAutoresizingMaskIntoConstraints = false
        field.layer.cornerRadius = 10
        field.layer.borderWidth = 1.35
        field.layer.borderColor = UIColor.white.cgColor
        field.backgroundColor = .clear
        field.textAlignment = .center
        
        return field
    }()
    
    let passwordTextField: UITextField = {
        let field = UITextField()
        field.attributedPlaceholder = NSAttributedString(string: "Password",
                                                         attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.80)])
        field.isSecureTextEntry = false
        field.font = UIFont(name: "Helvetica-Light", size: 18)
        field.textColor = .white
        field.translatesAutoresizingMaskIntoConstraints = false
        field.layer.cornerRadius = 10
        field.layer.borderWidth = 1.35
        field.layer.borderColor = UIColor.white.cgColor
        field.backgroundColor = .clear
        field.textAlignment = .center
        return field
    }()
    
    
    let loginBtn: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "Helvetica-Light", size: 18)
        button.backgroundColor = UIColor(red:0.17, green:0.73, blue:0.46, alpha:1.0)
        button.layer.cornerRadius = 10
        return button
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor(red:0.09, green:0.09, blue:0.11, alpha:1.0)
        setViews()
    }
    
    override func loadView() {
      super.loadView()
    }
    
    func setViews(){
        
        
        //parent stack
        self.view.addSubview(stackView)
        stackView.widthAnchor.constraint(equalTo: self.view.layoutMarginsGuide.widthAnchor, multiplier: 0.75).isActive = true
        stackView.heightAnchor.constraint(equalTo: self.view.layoutMarginsGuide.heightAnchor, multiplier: 0.60).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        stackView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 150).isActive = true
        
        stackView.addArrangedSubview(logoImage)
        
//        logoImage.heightAnchor.constraint(equalToConstant: 160).isActive = true
        logoImage.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true


        stackView.addArrangedSubview(userNameTextField)
        
        userNameTextField.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        userNameTextField.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        
        stackView.addArrangedSubview(passwordTextField)
        
        passwordTextField.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 45).isActive = true
        
        stackView.addArrangedSubview(loginBtn)
        loginBtn.widthAnchor.constraint(equalTo: stackView.widthAnchor).isActive = true
        loginBtn.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }


}

