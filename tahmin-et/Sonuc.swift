//
//  Sonuc.swift
//  tahmin-et
//
//  Created by Furkan Cingöz on 24.03.2024.
//

import SwiftUI

struct Sonuc: View {
  @State private var isActive = false
  var sonuc = false
  var body: some View {
    VStack{
      if sonuc == true {
        Text("Tebrikler kazandınız")
          .padding()
          .font(.largeTitle)
          .fontWeight(.bold)
          .foregroundStyle(.green)

        Image(systemName: "party.popper.fill")
          .resizable()
          .frame(width: 250,height: 250)
          .symbolEffect(.scale.up.byLayer,options: .repeating, isActive: isActive)
          .onAppear{
            Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true) { timer in
              self.isActive.toggle()
            }
          }
      } else {
        Text("Kaybettiniz")
          .padding()
          .font(.largeTitle)
          .fontWeight(.bold)
          .foregroundStyle(.red)

        Image(systemName: "xmark")
          .resizable()
          .frame(width: 250,height: 250)
          .symbolEffect(.scale.up.byLayer,options: .repeating, isActive: isActive)
          .onAppear{
            Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true) { timer in
              self.isActive.toggle()
            }
          }
      }
    }
  }
}

#Preview {
  Sonuc()
}
