//
//  LoginCoordinator.swift
//  AppNotifica
//
//  Created by Dario Pintor on 14/10/22.
//

import Foundation
import UIKit
class LoginCoordinator: Coordinator {
    
    var navigationController: UINavigationController
        init (navigationController: UINavigationController ) {
            self.navigationController = navigationController
     
        }

    override  func start() {
        let viewController = LoginViewController()
            self.navigationController.pushViewController(viewController, animated: true)

    }
}
