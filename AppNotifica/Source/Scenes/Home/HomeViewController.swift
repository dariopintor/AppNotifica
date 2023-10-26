//
//  HomeViewController.swift
//  AppNotifica
//
//  Created by Dario Pintor on 21/10/22.
//

import Foundation
import UIKit

class HomeViewController: ViewControllerDefault {
    
    //MARK: -  Clouseres
    let viewModel: HomeViewModel

    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    lazy var homeView: HomeView = {
        let homeView = HomeView(viewModel: viewModel)
        return homeView
    }()
    
    override func loadView(){
        self.view = homeView
    }

    @objc
    func handleAdd() {
        viewModel.didTapAdd()
    }

    func refreshData() {
        viewModel.fetchData()
        homeView.tableView.reloadData()
    }

    // é executado quando está carregando
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Ocorrências"

        refreshData()

        navigationItem.rightBarButtonItem = .init(title: "Add", style: .plain, target: self, action: #selector(handleAdd))
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

