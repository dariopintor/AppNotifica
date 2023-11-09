//
//  Ocorrencia.swift
//  AppNotifica
//
//  Created by Adonay on 25/10/23.
//

import Foundation

struct Ocorrencia: Codable {
    var imageBase64: String?
    var title: String
    var description: String
    var location: String
    var status: String
}
