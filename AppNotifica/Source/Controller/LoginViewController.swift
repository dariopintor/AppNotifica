//
//  LoginViewController.swift
//  AppNotifica
//
//  Created by Dario Pintor on 14/10/22.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    var viewMain = LoginView()
    
       override func loadView(){
           self.view = viewMain
       }
       
       override func viewDidLoad() {
           super.viewDidLoad()
            self.title = "Entrar"
           self.navigationController?.navigationBar.prefersLargeTitles=true
    
       }

}
