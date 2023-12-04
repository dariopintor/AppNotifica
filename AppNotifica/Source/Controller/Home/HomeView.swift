//
//  ViewHome.swift
//  AppNotifica
//
//  Created by Dario Pintor on 21/10/22.
import Foundation
import UIKit
class HomeView: ViewDefault {
    //MARK: - Closures
    
    //MARK: - Proports
    
    //MARK: - Inits
    
    var viewModel: HomeViewModel
    
    init(viewModel: HomeViewModel){
        self.viewModel = viewModel
        super.init(frame: .zero)
    }
    
    lazy var tableView: UITableView = {
        let view = UITableView(frame: .zero, style: .grouped)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    } ()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override  func setupVisualElements() {
       super.setupVisualElements()
        
       addSubview(tableView)
       NSLayoutConstraint.activate([
        tableView.topAnchor.constraint(equalTo: topAnchor),
        tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
        tableView.trailingAnchor.constraint(equalTo: trailingAnchor)
       ])
        
       setupTableView()
   }
    
    func setupTableView() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellIdentifier")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension HomeView: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView:UITableView, cellForRowAt indexPath: IndexPath ) ->
    UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath)
        cell.textLabel?.text = "Ocorrência 1"
        return cell
    }
}
