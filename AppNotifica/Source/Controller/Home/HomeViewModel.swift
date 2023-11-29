//
//  HomeViewModel.swift
//  AppNotifica
//
//  Created by Dario Pintor on 27/11/23.
//

import Foundation

class HomeViewModel {
    var coordinator: HomeCoordinator
    
    init(coordinator: HomeCoordinator) {
        self.coordinator = coordinator
    }
    
    func didTapAdd(){
        coordinator.presentNovaOcorrencia()
        
    }
}
