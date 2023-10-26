//
//  NovaOcorrenciaViewModel.swift
//  AppNotifica
//
//  Created by Adonay on 25/10/23.
//

import Foundation

class NovaOcorrenciaViewModel {
    var coordinator: HomeCoordinator

    init(coordinator: HomeCoordinator) {
        self.coordinator = coordinator
    }

    func didTapSave(ocorrencia: Ocorrencia) {
        DataManager.shared.add(ocorrencia: ocorrencia)

        coordinator.continueAfterNovaOcorrencia()
    }
}
