//
//  HomeViewModel.swift
//  AppNotifica
//
//  Created by Adonay on 25/10/23.
//

import Foundation

class HomeViewModel {
    var ocorrencias: [Ocorrencia] = []
    var coordinator: HomeCoordinator

    init(coordinator: HomeCoordinator) {
        self.coordinator = coordinator
    }

    func fetchData() {
        self.ocorrencias = DataManager.shared.ocorrencias
    }

    func didTapAdd() {
        coordinator.presentNovaOcorrencia()
    }
}
