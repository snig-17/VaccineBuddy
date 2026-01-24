//
//  DogsList.swift
//  VaccineBuddy
//
//  Created by Snigdha Tiwari  on 24/01/2026.
//

import SwiftUI

struct DogsList: View {
  var body: some View {
    ZStack() {
      Text("Dogs")
        .font(Font.custom("Inter", size: 24).weight(.semibold))
        .lineSpacing(32)
        .foregroundColor(.black)
        .offset(x: -148.50, y: -346)
      Text("Filter")
        .font(Font.custom("Inter", size: 17))
        .lineSpacing(24)
        .foregroundColor(Color(red: 0.15, green: 0.39, blue: 0.92))
        .offset(x: 155.50, y: -350)
      HStack(spacing: 12) {
        Ellipse()
          .foregroundColor(.clear)
          .frame(width: 56, height: 56)
          .background(Color(red: 0.42, green: 0.45, blue: 0.50))
        Text("IMG")
          .font(Font.custom("Inter", size: 13).weight(.medium))
          .lineSpacing(18)
          .foregroundColor(.black)
        VStack(alignment: .leading, spacing: 4) {
          Text("Bruno")
            .font(Font.custom("Inter", size: 17).weight(.semibold))
            .lineSpacing(24)
            .foregroundColor(Color(red: 0.07, green: 0.09, blue: 0.15))
          Text("Last: 2 days ago")
            .font(Font.custom("Inter", size: 13).weight(.medium))
            .lineSpacing(18)
            .foregroundColor(Color(red: 0.42, green: 0.45, blue: 0.50))
        }
        Rectangle()
          .foregroundColor(.clear)
          .frame(height: 25)
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
      }
      .padding(8)
      .frame(width: 358)
      .background(.white)
      .cornerRadius(8)
      .offset(x: 0, y: -278)
      .shadow(
        color: Color(red: 0, green: 0, blue: 0, opacity: 0.08), radius: 8, y: 2
      )
      HStack(spacing: 12) {
        Ellipse()
          .foregroundColor(.clear)
          .frame(width: 56, height: 56)
          .background(Color(red: 0.42, green: 0.45, blue: 0.50))
        Text("IMG")
          .font(Font.custom("Inter", size: 13).weight(.medium))
          .lineSpacing(18)
          .foregroundColor(.black)
        VStack(alignment: .leading, spacing: 4) {
          Text("Bruno")
            .font(Font.custom("Inter", size: 17).weight(.semibold))
            .lineSpacing(24)
            .foregroundColor(Color(red: 0.07, green: 0.09, blue: 0.15))
          Text("Last: 2 days ago")
            .font(Font.custom("Inter", size: 13).weight(.medium))
            .lineSpacing(18)
            .foregroundColor(Color(red: 0.42, green: 0.45, blue: 0.50))
        }
        Rectangle()
          .foregroundColor(.clear)
          .frame(height: 25)
        ZStack() {
          Rectangle()
            .foregroundColor(.clear)
            .frame(width: 32, height: 32)
            .background(Color(red: 0.96, green: 0.62, blue: 0.04))
            .cornerRadius(16)
            .offset(x: 0, y: 0)
          Text("⏳")
            .font(Font.custom("Inter", size: 18).weight(.semibold))
            .lineSpacing(24)
            .foregroundColor(.white)
            .offset(x: 0, y: 0)
        }
        .frame(width: 32, height: 32)
      }
      .padding(8)
      .frame(width: 358)
      .background(.white)
      .cornerRadius(8)
      .offset(x: 0, y: -190)
      .shadow(
        color: Color(red: 0, green: 0, blue: 0, opacity: 0.08), radius: 8, y: 2
      )
      HStack(spacing: 12) {
        Ellipse()
          .foregroundColor(.clear)
          .frame(width: 56, height: 56)
          .background(Color(red: 0.42, green: 0.45, blue: 0.50))
        Text("IMG")
          .font(Font.custom("Inter", size: 13).weight(.medium))
          .lineSpacing(18)
          .foregroundColor(.black)
        VStack(alignment: .leading, spacing: 4) {
          Text("Bruno")
            .font(Font.custom("Inter", size: 17).weight(.semibold))
            .lineSpacing(24)
            .foregroundColor(Color(red: 0.07, green: 0.09, blue: 0.15))
          Text("Last: 2 days ago")
            .font(Font.custom("Inter", size: 13).weight(.medium))
            .lineSpacing(18)
            .foregroundColor(Color(red: 0.42, green: 0.45, blue: 0.50))
        }
        Rectangle()
          .foregroundColor(.clear)
          .frame(height: 25)
        ZStack() {
          Rectangle()
            .foregroundColor(.clear)
            .frame(width: 32, height: 32)
            .background(Color(red: 0.86, green: 0.15, blue: 0.15))
            .cornerRadius(16)
            .offset(x: 0, y: 0)
          Text("✗")
            .font(Font.custom("Inter", size: 18).weight(.semibold))
            .lineSpacing(24)
            .foregroundColor(.white)
            .offset(x: 0, y: 0)
        }
        .frame(width: 32, height: 32)
      }
      .padding(8)
      .frame(width: 358)
      .background(.white)
      .cornerRadius(8)
      .offset(x: 0, y: -102)
      .shadow(
        color: Color(red: 0, green: 0, blue: 0, opacity: 0.08), radius: 8, y: 2
      )
      HStack(spacing: 12) {
        Ellipse()
          .foregroundColor(.clear)
          .frame(width: 56, height: 56)
          .background(Color(red: 0.42, green: 0.45, blue: 0.50))
        Text("IMG")
          .font(Font.custom("Inter", size: 13).weight(.medium))
          .lineSpacing(18)
          .foregroundColor(.black)
        VStack(alignment: .leading, spacing: 4) {
          Text("Bruno")
            .font(Font.custom("Inter", size: 17).weight(.semibold))
            .lineSpacing(24)
            .foregroundColor(Color(red: 0.07, green: 0.09, blue: 0.15))
          Text("Last: 2 days ago")
            .font(Font.custom("Inter", size: 13).weight(.medium))
            .lineSpacing(18)
            .foregroundColor(Color(red: 0.42, green: 0.45, blue: 0.50))
        }
        Rectangle()
          .foregroundColor(.clear)
          .frame(height: 25)
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
      }
      .padding(8)
      .frame(width: 358)
      .background(.white)
      .cornerRadius(8)
      .offset(x: 0, y: -14)
      .shadow(
        color: Color(red: 0, green: 0, blue: 0, opacity: 0.08), radius: 8, y: 2
      )
      HStack(spacing: 12) {
        Ellipse()
          .foregroundColor(.clear)
          .frame(width: 56, height: 56)
          .background(Color(red: 0.42, green: 0.45, blue: 0.50))
        Text("IMG")
          .font(Font.custom("Inter", size: 13).weight(.medium))
          .lineSpacing(18)
          .foregroundColor(.black)
        VStack(alignment: .leading, spacing: 4) {
          Text("Bruno")
            .font(Font.custom("Inter", size: 17).weight(.semibold))
            .lineSpacing(24)
            .foregroundColor(Color(red: 0.07, green: 0.09, blue: 0.15))
          Text("Last: 2 days ago")
            .font(Font.custom("Inter", size: 13).weight(.medium))
            .lineSpacing(18)
            .foregroundColor(Color(red: 0.42, green: 0.45, blue: 0.50))
        }
        Rectangle()
          .foregroundColor(.clear)
          .frame(height: 25)
        ZStack() {
          Rectangle()
            .foregroundColor(.clear)
            .frame(width: 32, height: 32)
            .background(Color(red: 0.42, green: 0.45, blue: 0.50))
            .cornerRadius(16)
            .offset(x: 0, y: 0)
          Text("?")
            .font(Font.custom("Inter", size: 18).weight(.semibold))
            .lineSpacing(24)
            .foregroundColor(.white)
            .offset(x: 0, y: 0)
        }
        .frame(width: 32, height: 32)
      }
      .padding(8)
      .frame(width: 358)
      .background(.white)
      .cornerRadius(8)
      .offset(x: 0, y: 74)
      .shadow(
        color: Color(red: 0, green: 0, blue: 0, opacity: 0.08), radius: 8, y: 2
      )
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
          .foregroundColor(Color(red: 0.15, green: 0.39, blue: 0.92))
          .offset(x: -120.50, y: 24.50)
        Text("Add")
          .font(Font.custom("Inter", size: 13).weight(.medium))
          .lineSpacing(18)
          .foregroundColor(Color(red: 0.42, green: 0.45, blue: 0.50))
          .offset(x: 118, y: 24.50)
      }
      .frame(width: 390, height: 83)
      .offset(x: 0, y: 380.50)
      Rectangle()
        .foregroundColor(.clear)
        .frame(width: 390, height: 44)
        .background(Color(red: 0.95, green: 0.96, blue: 0.96))
        .offset(x: 0, y: -400)
    }
    .frame(width: 390, height: 844)
    .background(Color(red: 0.95, green: 0.96, blue: 0.96));
  }
}

struct DogsList_Previews: PreviewProvider {
  static var previews: some View {
    DogsList()
  }
}
