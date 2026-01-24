//
//  PhotoStore.swift
//  VaccineBuddy
//
//  Created by Snigdha Tiwari  on 11/01/2026.
//

import Foundation
import UIKit

final class PhotoStore{
    private let docs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    func saveJPEG(_ image: UIImage, filename: String) throws {
        guard let data = image.jpegData(compressionQuality: 0.85) else { return}
        let url = docs.appendingPathComponent(filename)
        try data.write(to: url, options: [.atomic])
    }
    func loadImage(filename: String) -> UIImage? {
            let url = docs.appendingPathComponent(filename)
            guard let data = try? Data(contentsOf: url) else { return nil }
            return UIImage(data: data)
        }
}
