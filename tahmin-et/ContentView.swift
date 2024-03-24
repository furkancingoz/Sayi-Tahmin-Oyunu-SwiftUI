//
//  ContentView.swift
//  tahmin-et
//
//  Created by Furkan Cingöz on 24.03.2024.
//

import SwiftUI

struct ContentView: View {
  @State private var gecis = false
  var body: some View {
    NavigationStack{
      VStack {

        Text("Tahmin Et")
          .font(.largeTitle)
          .fontWeight(.bold)
          .padding()

        Image(systemName: "dice.fill")
          .resizable()
          .frame(width: 250,height: 250)
          .padding()

        Button("Oyuna başla") {
          gecis = true
        }
        .frame(width: 100,height: 50)
        .padding()
        .foregroundStyle(.white)
        .background(.blue)
        .cornerRadius(20)

      }.navigationDestination(isPresented: $gecis){
        TahminEt()
      }

    }
  }
}

#Preview {
  ContentView()
}
