//
//  DataManager.swift
//  AppNotifica
//
//  Created by Adonay on 25/10/23.
//

import Foundation

class DataManager {
    static var shared: DataManager = DataManager()

    var ocorrencias: [Ocorrencia] = []

    private init() {
        ocorrencias = [.init(title: "Ocorrencia #1", description: "Descrição", location: "Campus", status: "Não resolvida"),
                       .init(title: "Ocorrencia #2", description: "Descrição", location: "Campus", status: "Não resolvida"),
                       .init(title: "Ocorrencia #3", description: "Descrição", location: "Campus", status: "Não resolvida"),
                       .init(title: "Ocorrencia #4", description: "Descrição", location: "Campus", status: "Não resolvida"),
                       .init(title: "Ocorrencia #5", description: "Descrição", location: "Campus", status: "Não resolvida")]
    }

    func add(ocorrencia: Ocorrencia) {
        ocorrencias.append(ocorrencia)

        print(ocorrencias)
    }
}
