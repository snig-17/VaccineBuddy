//
//  AddDog.swift
//  VaccineBuddy
//
//  Created by Snigdha Tiwari  on 24/01/2026.
//

import SwiftUI

struct AddDog: View {
  var body: some View {
    ZStack() {
      Group {
        Text("← Cancel")
          .font(Font.custom("Inter", size: 17))
          .lineSpacing(24)
          .foregroundColor(Color(red: 0.15, green: 0.39, blue: 0.92))
          .offset(x: -140.50, y: -350)
        Text("Add Dog")
          .font(Font.custom("Inter", size: 17).weight(.semibold))
          .lineSpacing(24)
          .foregroundColor(Color(red: 0.07, green: 0.09, blue: 0.15))
          .offset(x: 0, y: -344.50)
        Text("Photos")
          .font(Font.custom("Inter", size: 17).weight(.semibold))
          .lineSpacing(24)
          .foregroundColor(Color(red: 0.07, green: 0.09, blue: 0.15))
          .offset(x: -150, y: -294)
        Text("Add 2-3 clear photos")
          .font(Font.custom("Inter", size: 13).weight(.medium))
          .lineSpacing(18)
          .foregroundColor(Color(red: 0.42, green: 0.45, blue: 0.50))
          .offset(x: -113, y: -269)
        HStack(alignment: .top, spacing: 5) {
          VStack(spacing: 4) {
            Text("+")
              .font(Font.custom("Inter", size: 32).weight(.bold))
              .lineSpacing(40)
              .foregroundColor(Color(red: 0.42, green: 0.45, blue: 0.50).opacity(0.30))
            Ellipse()
              .foregroundColor(.clear)
              .frame(width: 64, height: 64)
              .background(Color(red: 0.85, green: 0.85, blue: 0.85))
            Text("IMG")
              .font(Font.custom("Inter", size: 13).weight(.bold))
              .lineSpacing(40)
              .foregroundColor(.white)
            Text("Front")
              .font(Font.custom("Inter", size: 13).weight(.medium))
              .lineSpacing(18)
              .foregroundColor(Color(red: 0.42, green: 0.45, blue: 0.50))
          }
          .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
          .frame(width: 120)
          .background(Color(red: 0.95, green: 0.96, blue: 0.96))
          .cornerRadius(8)
          .overlay(
            RoundedRectangle(cornerRadius: 8)
              .inset(by: 1)
              .stroke(Color(red: 0.90, green: 0.91, blue: 0.92), lineWidth: 1)
          )
          VStack(spacing: 4) {
            Text("+")
              .font(Font.custom("Inter", size: 32).weight(.bold))
              .lineSpacing(40)
              .foregroundColor(Color(red: 0.42, green: 0.45, blue: 0.50).opacity(0.30))
            Ellipse()
              .foregroundColor(.clear)
              .frame(width: 64, height: 64)
              .background(Color(red: 0.85, green: 0.85, blue: 0.85))
            Text("IMG")
              .font(Font.custom("Inter", size: 13).weight(.bold))
              .lineSpacing(40)
              .foregroundColor(.white)
            Text("Left")
              .font(Font.custom("Inter", size: 13).weight(.medium))
              .lineSpacing(18)
              .foregroundColor(Color(red: 0.42, green: 0.45, blue: 0.50))
          }
          .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
          .frame(width: 120)
          .background(Color(red: 0.95, green: 0.96, blue: 0.96))
          .cornerRadius(8)
          .overlay(
            RoundedRectangle(cornerRadius: 8)
              .inset(by: 1)
              .stroke(Color(red: 0.90, green: 0.91, blue: 0.92), lineWidth: 1)
          )
          VStack(spacing: 4) {
            Text("+")
              .font(Font.custom("Inter", size: 32).weight(.bold))
              .lineSpacing(40)
              .foregroundColor(Color(red: 0.42, green: 0.45, blue: 0.50).opacity(0.30))
            Ellipse()
              .foregroundColor(.clear)
              .frame(width: 64, height: 64)
              .background(Color(red: 0.85, green: 0.85, blue: 0.85))
            Text("IMG")
              .font(Font.custom("Inter", size: 13).weight(.bold))
              .lineSpacing(40)
              .foregroundColor(.white)
            Text("Right")
              .font(Font.custom("Inter", size: 13).weight(.medium))
              .lineSpacing(18)
              .foregroundColor(Color(red: 0.42, green: 0.45, blue: 0.50))
          }
          .padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
          .frame(width: 120)
          .background(Color(red: 0.95, green: 0.96, blue: 0.96))
          .cornerRadius(8)
          .overlay(
            RoundedRectangle(cornerRadius: 8)
              .inset(by: 1)
              .stroke(Color(red: 0.90, green: 0.91, blue: 0.92), lineWidth: 1)
          )
        }
        .padding(5)
        .frame(width: 390)
        .offset(x: 0, y: -177.50)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 358, height: 0)
          .overlay(
            Rectangle()
              .stroke(Color(red: 0.90, green: 0.91, blue: 0.92), lineWidth: 0.50)
          )
          .offset(x: 0, y: -106)
        HStack(spacing: 10) {
          Text("Name or Tag ID")
            .font(Font.custom("Inter", size: 17))
            .lineSpacing(24)
            .foregroundColor(Color(red: 0.42, green: 0.45, blue: 0.50))
        }
        .padding(12)
        .frame(width: 364, height: 48)
        .background(.white)
        .cornerRadius(8)
        .overlay(
          RoundedRectangle(cornerRadius: 8)
            .inset(by: 0.50)
            .stroke(Color(red: 0.90, green: 0.91, blue: 0.92), lineWidth: 0.50)
        )
        .offset(x: 3, y: -26)
        HStack(spacing: 10) {
          Text("Location")
            .font(Font.custom("Inter", size: 17))
            .lineSpacing(24)
            .foregroundColor(Color(red: 0.42, green: 0.45, blue: 0.50))
        }
        .padding(12)
        .frame(width: 364, height: 48)
        .background(.white)
        .cornerRadius(8)
        .overlay(
          RoundedRectangle(cornerRadius: 8)
            .inset(by: 0.50)
            .stroke(Color(red: 0.90, green: 0.91, blue: 0.92), lineWidth: 0.50)
        )
        .offset(x: 3, y: 38)
        HStack(spacing: 10) {
          Text("Markings/Notes")
            .font(Font.custom("Inter", size: 17))
            .lineSpacing(24)
            .foregroundColor(Color(red: 0.42, green: 0.45, blue: 0.50))
        }
        .padding(12)
        .frame(width: 364, height: 96)
        .background(.white)
        .cornerRadius(8)
        .overlay(
          RoundedRectangle(cornerRadius: 8)
            .inset(by: 0.50)
            .stroke(Color(red: 0.90, green: 0.91, blue: 0.92), lineWidth: 0.50)
        )
        .offset(x: 3, y: 127)
        ZStack() {
          HStack(spacing: 10) {
            Text("Save Dog ✓")
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
        .offset(x: 4, y: 235)
      }
        Group {
        ZStack() {
          Rectangle()
            .foregroundColor(.clear)
            .frame(width: 390, height: 83)
            .background(.white)
            .overlay(
              Rectangle()
                .inset(by: -0.50)
                .stroke(Color(red: 0.90, green: 0.91, blue: 0.92), lineWidth: 0.50)
            )
            .offset(x: 0, y: 0)
          Text("➕")
            .font(Font.custom("Inter", size: 28).weight(.medium))
            .lineSpacing(18)
            .foregroundColor(.black)
            .offset(x: 122, y: -8.50)
          Text("Scan")
            .font(Font.custom("Inter", size: 13).weight(.medium))
            .lineSpacing(18)
            .foregroundColor(Color(red: 0.42, green: 0.45, blue: 0.50))
            .offset(x: -3.50, y: 24.50)
          Text("📸")
            .font(Font.custom("Inter", size: 28).weight(.medium))
            .lineSpacing(18)
            .foregroundColor(.black)
            .offset(x: 0, y: -8.50)
          Text("🐶")
            .font(Font.custom("Inter", size: 28).weight(.medium))
            .lineSpacing(18)
            .foregroundColor(.black)
            .offset(x: -116, y: -8.50)
          Text("Dogs")
            .font(Font.custom("Inter", size: 13).weight(.medium))
            .lineSpacing(18)
            .foregroundColor(Color(red: 0.42, green: 0.45, blue: 0.50))
            .offset(x: -120.50, y: 24.50)
          Text("Add")
            .font(Font.custom("Inter", size: 13).weight(.medium))
            .lineSpacing(18)
            .foregroundColor(Color(red: 0.15, green: 0.39, blue: 0.92))
            .offset(x: 118, y: 24.50)
        }
        .frame(width: 390, height: 83)
        .offset(x: 0, y: 380.50)
        Text("Details (Optional)")
          .font(Font.custom("Inter", size: 17).weight(.semibold))
          .lineSpacing(24)
          .foregroundColor(.black)
          .offset(x: -107, y: -76)
      }
    }
    .frame(width: 390, height: 844)
    .background(Color(red: 0.95, green: 0.96, blue: 0.96));
  }
}

struct AddDog_Previews: PreviewProvider {
  static var previews: some View {
    AddDog()
  }
}
