//
//  Models.swift
//  VaccineBuddy
//
//  Created by Snigdha Tiwari  on 11/01/2026.
//

import Foundation

struct Dog: Codable, Identifiable {
    let id: UUID
    var name: String
    var vaccinated: Bool
    var lastVaccinationDate: Date?
    var notes: String?
    var references: [DogReference]
}

struct DogReference: Codable, Identifiable {
    let id: UUID
    var photoFileName: String
    var featurePrintData: Data
    var createdAt: Date
}
