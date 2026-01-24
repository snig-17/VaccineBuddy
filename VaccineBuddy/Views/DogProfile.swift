//
//  DogProfile.swift
//  VaccineBuddy
//
//  Created by Snigdha Tiwari  on 24/01/2026.
//

import SwiftUI

struct DogProfile: View {
  var body: some View {
    ZStack() {
      Text("← Back")
        .font(Font.custom("Inter", size: 17))
        .lineSpacing(24)
        .foregroundColor(Color(red: 0.15, green: 0.39, blue: 0.92))
        .offset(x: -148.50, y: -350)
        VStack(alignment: .center, spacing: 10) {
        Text("Actions")
          .font(Font.custom("Inter", size: 17).weight(.semibold))
          .lineSpacing(24)
          .foregroundColor(Color(red: 0.07, green: 0.09, blue: 0.15))
        VStack(spacing: 5) {
          HStack(spacing: 12) {
            ZStack() {
              Rectangle()
                .foregroundColor(.clear)
                .frame(width: 32, height: 32)
                .background(Color(red: 0, green: 0.66, blue: 0.42))
                .cornerRadius(16)
                .offset(x: 0, y: 0)
              Text("✓")
                .font(Font.custom("Inter", size: 18).weight(.semibold))
                .lineSpacing(24)
                .foregroundColor(.white)
                .offset(x: 0, y: 0)
            }
            .frame(width: 32, height: 32)
            Text("Last: 12 Jan 2026")
              .font(Font.custom("Inter", size: 13).weight(.medium))
              .lineSpacing(18)
              .foregroundColor(Color(red: 0.42, green: 0.45, blue: 0.50))
          }
          .padding(EdgeInsets(top: 5, leading: 12, bottom: 5, trailing: 12))
          .frame(width: 342)
          .background(Color(red: 0, green: 0.66, blue: 0.42).opacity(0.50))
          .cornerRadius(16)
          Ellipse()
            .foregroundColor(.clear)
            .frame(width: 160, height: 160)
            .background(Color(red: 0.42, green: 0.45, blue: 0.50))
          Text("IMG")
            .font(Font.custom("Inter", size: 24).weight(.bold))
            .lineSpacing(40)
            .foregroundColor(.white)
          Text("Bruno")
            .font(Font.custom("Inter", size: 32).weight(.bold))
            .lineSpacing(40)
            .foregroundColor(.black)
          Text("Tag: BD-2847")
            .font(Font.custom("Inter", size: 13).weight(.medium))
            .lineSpacing(18)
            .foregroundColor(Color(red: 0.42, green: 0.45, blue: 0.50))
            .opacity(0.50)
        }
        .frame(width: 358)
        VStack(spacing: 5) {
          ZStack() {
            HStack(spacing: 10) {
              Text("Mark Vaccinated")
                .font(Font.custom("Inter", size: 17).weight(.semibold))
                .lineSpacing(24)
                .foregroundColor(.white)
            }
            .padding(16)
            .offset(x: 0, y: 0)
          }
          .frame(width: 342, height: 56)
          .background(Color(red: 0.15, green: 0.39, blue: 0.92))
          .cornerRadius(12)
          ZStack() {
            HStack(spacing: 10) {
              Text("Add Reference Photo")
                .font(Font.custom("Inter", size: 17).weight(.semibold))
                .lineSpacing(24)
                .foregroundColor(Color(red: 0.15, green: 0.39, blue: 0.92))
            }
            .padding(16)
            .offset(x: 0, y: 0)
          }
          .frame(width: 342, height: 56)
          .background(.white)
          .cornerRadius(12)
          .overlay(
            RoundedRectangle(cornerRadius: 12)
              .inset(by: 1)
              .stroke(Color(red: 0.15, green: 0.39, blue: 0.92), lineWidth: 1)
          )
        }
        .frame(width: 390)
        VStack(spacing: 5) {
          Text("Vaccination History")
            .font(Font.custom("Inter", size: 17).weight(.semibold))
            .lineSpacing(24)
            .foregroundColor(.black)
          ZStack() {
            Text("• 12 Jan 2026 ✓")
              .font(Font.custom("Inter", size: 17))
              .lineSpacing(24)
              .foregroundColor(Color(red: 0.07, green: 0.09, blue: 0.15))
              .offset(x: 0, y: 0)
          }
          .frame(width: 133, height: 24)
          ZStack() {
            Text("• 12 Jan 2026 ✓")
              .font(Font.custom("Inter", size: 17))
              .lineSpacing(24)
              .foregroundColor(Color(red: 0.07, green: 0.09, blue: 0.15))
              .offset(x: 0, y: 0)
          }
          .frame(width: 133, height: 24)
        }
        VStack(spacing: 5) {
          Text("Reference Photos")
            .font(Font.custom("Inter", size: 17).weight(.semibold))
            .lineSpacing(24)
            .foregroundColor(.black)
          ZStack() {
            VStack(spacing: 4) {
              Ellipse()
                .foregroundColor(.clear)
                .frame(width: 64, height: 64)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
              Text("IMG")
                .font(Font.custom("Inter", size: 13).weight(.bold))
                .lineSpacing(40)
                .foregroundColor(.white)
            }
            .frame(width: 120, height: 130)
            .background(Color(red: 0.95, green: 0.96, blue: 0.96))
            .cornerRadius(8)
            .overlay(
              RoundedRectangle(cornerRadius: 8)
                .inset(by: 1)
                .stroke(Color(red: 0.15, green: 0.39, blue: 0.92), lineWidth: 1)
            )
            .offset(x: -139.50, y: -2.50)
            VStack(spacing: 4) {
              Ellipse()
                .foregroundColor(.clear)
                .frame(width: 64, height: 64)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
              Text("IMG")
                .font(Font.custom("Inter", size: 13).weight(.bold))
                .lineSpacing(40)
                .foregroundColor(.white)
            }
            .frame(width: 120, height: 130)
            .background(Color(red: 0.95, green: 0.96, blue: 0.96))
            .cornerRadius(8)
            .overlay(
              RoundedRectangle(cornerRadius: 8)
                .inset(by: 1)
                .stroke(Color(red: 0.15, green: 0.39, blue: 0.92), lineWidth: 1)
            )
            .offset(x: -8.50, y: -2.50)
            VStack(spacing: 4) {
              Ellipse()
                .foregroundColor(.clear)
                .frame(width: 64, height: 64)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85))
              Text("IMG")
                .font(Font.custom("Inter", size: 13).weight(.bold))
                .lineSpacing(40)
                .foregroundColor(.white)
            }
            .frame(width: 120, height: 130)
            .background(Color(red: 0.95, green: 0.96, blue: 0.96))
            .cornerRadius(8)
            .overlay(
              RoundedRectangle(cornerRadius: 8)
                .inset(by: 1)
                .stroke(Color(red: 0.15, green: 0.39, blue: 0.92), lineWidth: 1)
            )
            .offset(x: 119.50, y: -2.50)
          }
          .frame(width: 379, height: 135)
        }
      }
      .frame(width: 358)
      .offset(x: 0, y: 15)
      ZStack() {
        HStack(spacing: 10) {
          Text("Edit Profile")
            .font(Font.custom("Inter", size: 17).weight(.semibold))
            .lineSpacing(24)
            .foregroundColor(.white)
        }
        .padding(16)
        .offset(x: 0, y: 0)
      }
      .frame(width: 342, height: 56)
      .background(Color(red: 0.15, green: 0.39, blue: 0.92))
      .cornerRadius(12)
      .offset(x: 7, y: 387)
    }
    .frame(width: 390, height: 844)
    .background(Color(red: 0.95, green: 0.96, blue: 0.96));
  }
}

struct DogProfile_Previews: PreviewProvider {
  static var previews: some View {
    DogProfile()
  }
}
