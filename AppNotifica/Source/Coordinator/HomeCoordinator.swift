//
//  HomeCoordinator.swift
//  AppNotifica
//
//  Created by Dario Pintor on 21/10/22.
//

import UIKit

class HomeCoordinator: Coordinator {
    private let navigationController: UINavigationController

    lazy var homeViewController: HomeViewController = {
        let viewModel = HomeViewModel(coordinator: self)
        let viewController = HomeViewController(viewModel: viewModel)
        viewController.tabBarItem.title = "Home"
        viewController.tabBarItem.image = UIImage(systemName: "homekit")
        return viewController
    }()

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        self.navigationController.setViewControllers([homeViewController], animated: false)
    }

    func presentNovaOcorrencia() {
        let viewModel = NovaOcorrenciaViewModel(coordinator: self)
        let viewController = NovaOcorrenciaViewController(viewModel: viewModel)
        let navigationNovaOcorrencia = UINavigationController(rootViewController: viewController)
//        navigationNovaOcorrencia.modalPresentationStyle = .overFullScreen
//        navigationController.pushViewController(viewController, animated: true)
        navigationController.present(navigationNovaOcorrencia, animated: true)
    }

    func continueAfterNovaOcorrencia() {
        //Fechar a tela
        if navigationController.presentedViewController != nil {
            navigationController.dismiss(animated: true)
        }

        homeViewController.refreshData()
    }
}
