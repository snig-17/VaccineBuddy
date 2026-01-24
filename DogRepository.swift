//
//  DogRepository.swift
//  VaccineBuddy
//
//  Created by Snigdha Tiwari  on 11/01/2026.
//

import Foundation

final class DogRepository {
    private let url: URL
    
    init(){
        let docs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        self.url = docs.appendingPathComponent("dogs.json")
    }
    func load() -> [Dog] {
        guard let data = try? Data(contentsOf: url) else {
            return []
        }
        return (try? JSONDecoder().decode([Dog].self, from: data)) ?? []
    }
    func save(_ dogs: [Dog]){
        guard let data = try? JSONEncoder().encode(dogs) else { return }
        try? data.write(to: url, options: [.atomic])
        
    }
}
