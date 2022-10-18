//
//  LoginView.swift
//  AppNotifica
//
//  Created by Dario Pintor on 14/10/22.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    //MARK: - Initialize
        override init(frame: CGRect) {
            //chama o frame da superclasse
            super.init(frame: frame)
            // muda a cor de fundo do app para branco
            self.backgroundColor = .white
            setupVisualElements()
        
        }
    
    
    var imageLogin: UIImageView = {
           let theImageView = UIImageView()
            theImageView.image = UIImage(named: "ImageTelaLogin2")
            theImageView.contentMode = .scaleAspectFit
        
            theImageView.layer.masksToBounds = true
            theImageView.translatesAutoresizingMaskIntoConstraints = false
     
           return theImageView
        }()
    
    //cria a label
    var imageLabel: UILabel = {
        var label = UILabel()
        label.textColor = .gray
        label.contentMode = .scaleAspectFill
        label.text = "Registre e gerencie as ocorrências do seu IF"
        label.font = UIFont(name: "SFProDisplay-Light", size: 8)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    

    //cria o textFild do email
    var emailTextField: UITextField = {
        var textField = UITextField()
        textField.textColor = .black
        textField.placeholder = "E-mail"
        textField.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    } ()
    
    //cria o textFild do email
    var passWordTextField: UITextField = {
        var textField = UITextField()
        textField.textColor = .black
        textField.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        textField.placeholder = "Senha"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    } ()
    
    //cria o button do logar
    var buttonLogar: UIButton = {
        var button = UIButton()
        button.setTitle("Entrar", for: .normal)
        button.backgroundColor = UIColor(red: 0.369, green: 0.639, blue: 0.639, alpha: 1)
        button.layer.cornerRadius = 14
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    } ()
    
    //cria o button do logar
    var buttonRegistrar: UIButton = {
        var button = UIButton()
        button.setTitle("Registrar", for: .normal)
        button.backgroundColor = UIColor(red: 0.369, green: 0.639, blue: 0.639, alpha: 1)
        button.layer.cornerRadius = 14
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    } ()
    
    
    private func setupVisualElements(){
        self.addSubview(imageLogin)
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(passWordTextField)
        self.addSubview(buttonLogar)
        self.addSubview(buttonRegistrar)
        
        
        NSLayoutConstraint.activate([
            
            imageLogin.topAnchor.constraint(equalTo: self.topAnchor, constant: 200),
            imageLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 45),
            imageLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -45),
            imageLogin.widthAnchor.constraint(equalToConstant: 285),
            imageLogin.heightAnchor.constraint(equalToConstant: 100),
                        
            imageLabel.topAnchor.constraint(equalTo: imageLogin.bottomAnchor, constant: 0),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            imageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            imageLabel.widthAnchor.constraint(equalToConstant: 100),
            
            emailTextField.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 70),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            emailTextField.widthAnchor.constraint(equalToConstant: 374),
            emailTextField.heightAnchor.constraint(equalToConstant: 60),

            
            passWordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 15),
            passWordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            passWordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            passWordTextField.widthAnchor.constraint(equalToConstant: 374),
            passWordTextField.heightAnchor.constraint(equalToConstant: 60),
            
            buttonLogar.topAnchor.constraint(equalTo: passWordTextField.bottomAnchor, constant: 25),
            buttonLogar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonLogar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            buttonLogar.widthAnchor.constraint(equalToConstant: 374),
            buttonLogar.heightAnchor.constraint(equalToConstant: 60),
            
            buttonRegistrar.topAnchor.constraint(equalTo: buttonLogar.bottomAnchor, constant: 15),
            buttonRegistrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonRegistrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            buttonRegistrar.widthAnchor.constraint(equalToConstant: 374),
            buttonRegistrar.heightAnchor.constraint(equalToConstant: 60),
                        
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
