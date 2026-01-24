//
//  Scan.swift
//  VaccineBuddy
//
//  Created by Snigdha Tiwari  on 24/01/2026.
//


import SwiftUI

struct Scan: View {
  var body: some View {
    ZStack() {
      Text("← Back")
        .font(Font.custom("Inter", size: 17))
        .lineSpacing(24)
        .foregroundColor(Color(red: 0.15, green: 0.39, blue: 0.92))
        .offset(x: -148.50, y: -350)
      Rectangle()
        .foregroundColor(.clear)
        .frame(width: 358, height: 268)
        .background(Color(red: 0.42, green: 0.45, blue: 0.50))
        .cornerRadius(12)
        .offset(x: 0, y: -180)
      Text("Camera Viewfinder")
        .font(Font.custom("Inter", size: 17))
        .lineSpacing(24)
        .foregroundColor(Color(red: 1, green: 1, blue: 1).opacity(0.80))
        .offset(x: 0, y: -180)
      Rectangle()
        .foregroundColor(.clear)
        .frame(width: 200, height: 200)
        .offset(x: -6, y: -171)
      Rectangle()
        .foregroundColor(.clear)
        .frame(width: 200, height: 200)
        .background(Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0))
        .cornerRadius(8)
        .overlay(
          RoundedRectangle(cornerRadius: 8)
            .inset(by: 1)
            .stroke(Color(red: 1, green: 1, blue: 1).opacity(0.60), lineWidth: 1)
        )
        .offset(x: 0, y: -171)
      ZStack() {
        HStack(spacing: 10) {
          Text("Scan Dog 📸")
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
      .offset(x: 1, y: -13)
      VStack(spacing: 12) {
        Text("✓ We found Bruno")
          .font(Font.custom("Inter", size: 24).weight(.semibold))
          .lineSpacing(32)
          .foregroundColor(Color(red: 0, green: 0.66, blue: 0.42))
        Ellipse()
          .foregroundColor(.clear)
          .frame(width: 80, height: 80)
          .background(Color(red: 0.42, green: 0.45, blue: 0.50))
        Text("IMG")
          .font(Font.custom("Inter", size: 13).weight(.medium))
          .lineSpacing(18)
          .foregroundColor(.black)
        Text("Last vaccinated")
          .font(Font.custom("Inter", size: 13).weight(.medium))
          .lineSpacing(18)
          .foregroundColor(.black)
        Text("12 Jan 2026")
          .font(Font.custom("Inter", size: 17).weight(.semibold))
          .lineSpacing(24)
          .foregroundColor(.black)
        Text("(2 days ago)")
          .font(Font.custom("Inter", size: 13).weight(.medium))
          .lineSpacing(18)
          .foregroundColor(Color(red: 0.42, green: 0.45, blue: 0.50))
        ZStack() {
          Rectangle()
            .foregroundColor(.clear)
            .frame(width: 342, height: 56)
            .background(Color(red: 0.15, green: 0.39, blue: 0.92))
            .cornerRadius(12)
            .offset(x: 0, y: 0)
          Text("Mark Vaccinated")
            .font(Font.custom("Inter", size: 17).weight(.semibold))
            .lineSpacing(24)
            .foregroundColor(.white)
            .offset(x: 0.50, y: 0)
        }
        .frame(width: 342, height: 56)
        ZStack() {
          HStack(spacing: 10) {
            Text("View Full Profile")
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
      .padding(20)
      .frame(width: 358)
      .background(.white)
      .cornerRadius(16)
      .offset(x: 0, y: 224)
      .shadow(
        color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 0
      )
    }
    .frame(width: 390, height: 844)
    .background(Color(red: 0.95, green: 0.96, blue: 0.96));
  }
}

struct Scan_Previews: PreviewProvider {
  static var previews: some View {
    Scan()
  }
}
