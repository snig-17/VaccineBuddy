//
//  Scan.swift
//  VaccineBuddy
//
//  Created by Snigdha Tiwari  on 24/01/2026.
//

import SwiftUI
import AVFoundation
import UIKit
import Models

enum ScanResultState {
    case foundDog(dog: Dog)
    case similarDogs([Dog], confidence: Double)
    case newDog(confidence: Double)
    case none
}

struct Scan: View {
    @State private var takePhotoTrigger: Bool = false
    @State private var scanResult: ScanResultState = .none

    var body: some View {
        ZStack {
            CameraView(takePhotoTrigger: $takePhotoTrigger) { image in
                // After photo captured, perform ML scan simulation
                mockMLScan(with: image)
            }
            .ignoresSafeArea()

            VStack {
                Spacer()
                Button(action: { takePhotoTrigger.toggle() }) {
                    Text("Scan Dog 📸")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(red: 0.15, green: 0.39, blue: 0.92))
                        .cornerRadius(12)
                }
                .padding(.bottom, 40)
            }

            // Bottom overlay for ML result cards
            VStack {
                Spacer()
                switch scanResult {
                case .foundDog(let dog):
                    foundDogCard(dog: dog)
                        .padding()
                        .transition(.move(edge: .bottom).combined(with: .opacity))
                case .similarDogs(let dogs, let confidence):
                    similarDogsCard(dogs: dogs, confidence: confidence)
                        .padding()
                        .transition(.move(edge: .bottom).combined(with: .opacity))
                case .newDog(let confidence):
                    newDogCard(confidence: confidence)
                        .padding()
                        .transition(.move(edge: .bottom).combined(with: .opacity))
                case .none:
                    EmptyView()
                }
            }
            .animation(.easeInOut, value: scanResult)
        }
    }

    // MARK: - Cards UI

    private func foundDogCard(dog: Dog) -> some View {
        VStack(spacing: 16) {
            HStack {
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(.green)
                    .font(.title2)
                Text(dog.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
            }
            HStack {
                Image(systemName: "calendar")
                    .foregroundColor(.secondary)
                Text(lastVaccinationDateDisplay(for: dog))
                    .foregroundColor(.secondary)
                Spacer()
            }
            HStack(spacing: 16) {
                Button {
                    // Action to mark vaccinated
                } label: {
                    Text("Mark Vaccinated")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green.opacity(0.8))
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                Button {
                    // Action to view full profile
                } label: {
                    Text("View Full Profile")
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue.opacity(0.85))
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
            }
        }
        .padding()
        .background(Color(.systemBackground).opacity(0.95))
        .cornerRadius(20)
        .shadow(radius: 8)
    }

    private func similarDogsCard(dogs: [Dog], confidence: Double) -> some View {
        VStack(spacing: 16) {
            Text("Similar Dogs Found")
                .font(.title3)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
            ForEach(dogs.prefix(3)) { dog in
                HStack {
                    Text(dog.name)
                        .fontWeight(.medium)
                    Spacer()
                    if let conf = confidenceForDog(dog, in: dogs) {
                        Text(String(format: "%.0f%%", conf * 100))
                            .foregroundColor(.secondary)
                    }
                }
                .padding(.vertical, 6)
                .padding(.horizontal)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(12)
            }
            Button {
                // Action for none of these selected
            } label: {
                Text("None of these")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.red.opacity(0.85))
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }

            VStack(spacing: 4) {
                Text("Confidence: \(String(format: "%.0f%%", confidence * 100))")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                Text("The app found similar dogs, please check if any match.")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
            }
            .padding(.top, 4)
        }
        .padding()
        .background(Color(.systemBackground).opacity(0.95))
        .cornerRadius(20)
        .shadow(radius: 8)
    }

    private func newDogCard(confidence: Double) -> some View {
        VStack(spacing: 16) {
            Text("New Dog Detected")
                .font(.title3)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(String(format: "Confidence: %.0f%%", confidence * 100))
                .foregroundColor(.secondary)
            Button {
                // Action to add new dog
            } label: {
                Text("Add This Dog")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue.opacity(0.85))
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
        }
        .padding()
        .background(Color(.systemBackground).opacity(0.95))
        .cornerRadius(20)
        .shadow(radius: 8)
    }

    // MARK: - Helpers for Display

    private func lastVaccinationDateDisplay(for dog: Dog) -> String {
        if let date = dog.lastVaccinationDate {
            let formatter = DateFormatter()
            formatter.dateStyle = .medium
            return "Vaccinated on \(formatter.string(from: date))"
        } else if dog.vaccinated {
            return "Vaccination Date Unknown"
        } else {
            return "Not Vaccinated"
        }
    }

    private func confidenceForDog(_ dog: Dog, in dogs: [Dog]) -> Double? {
        // Since the imported Dog model does not have confidence,
        // we keep a dictionary mapping dog id to confidence for the mock data.
        // For the mock scenario, we embed confidence in scanResult's similarDogs case,
        // but the Dog objects themselves do not carry confidence.
        // Thus, in our mockMLScan, we create a parallel array of confidence values.
        // Here, just match by index.
        guard case .similarDogs(let dogList, let overallConfidence) = scanResult else {
            return nil
        }
        if let index = dogList.firstIndex(where: { $0.id == dog.id }) {
            // For demo, confidence values for each dog are hardcoded in mockMLScan,
            // so replicate that here based on index:
            let confidences = [0.82, 0.77, 0.74]
            if index < confidences.count {
                return confidences[index]
            }
        }
        return nil
    }

    // MARK: - Mock ML Scan Function

    private func mockMLScan(with image: UIImage) {
        // Clear current result while scanning
        scanResult = .none

        // Simulate async ML processing delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
            // Mock logic to randomly return one of the three cases
            let randomCase = Int.random(in: 0...2)

            switch randomCase {
            case 0:
                // Found Dog
                let dog = Dog(
                    id: UUID(),
                    name: "Buddy",
                    vaccinated: true,
                    lastVaccinationDate: Date(timeIntervalSince1970: 1673500800) // Jan 12, 2023 approx
                )
                scanResult = .foundDog(dog: dog)

            case 1:
                // Similar Dogs
                let dogs = [
                    Dog(id: UUID(), name: "Charlie", vaccinated: false, lastVaccinationDate: nil),
                    Dog(id: UUID(), name: "Max", vaccinated: true, lastVaccinationDate: Date(timeIntervalSince1970: 1654041600)), // June 1, 2022 approx
                    Dog(id: UUID(), name: "Bella", vaccinated: true, lastVaccinationDate: Date(timeIntervalSince1970: 1661990400)) // Sept 1, 2022 approx
                ]
                scanResult = .similarDogs(dogs, confidence: 0.79)

            case 2:
                // New Dog
                scanResult = .newDog(confidence: 0.65)

            default:
                scanResult = .none
            }
        }

        // In future: Replace this mock with real ML model prediction logic here,
        // which analyzes 'image' and updates 'scanResult' accordingly.
    }
}

struct Scan_Previews: PreviewProvider {
    static var previews: some View {
        Scan()
    }
}
