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
        ocorrencias = loadData()
    }

    func loadData() -> [Ocorrencia] {
//        guard let jsonURL = Bundle.main.url(forResource: "test", withExtension: "json") else {
//            return []
//        }

//        if let data = try? Data(contentsOf: jsonURL) {

        if let data = UserDefaults.standard.data(forKey: "DATA_OCORRENCIAS") {
            do {
                let objects = try JSONDecoder().decode([Ocorrencia].self, from: data)
                return objects
            } catch {
                print(error)
            }
        }

        return []
    }

    func add(ocorrencia: Ocorrencia) {
        ocorrencias.append(ocorrencia)

        if let data = try? JSONEncoder().encode(ocorrencias) {
            UserDefaults.standard.setValue(data, forKey: "DATA_OCORRENCIAS")
        }
    }
}

