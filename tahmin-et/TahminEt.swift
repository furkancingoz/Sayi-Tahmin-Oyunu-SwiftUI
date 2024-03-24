//
//  TahminEt.swift
//  tahmin-et
//
//  Created by Furkan Cingöz on 24.03.2024.
//

import SwiftUI

struct TahminEt: View {

  @State private var tahmin = ""
  @State private var sonucEkraninaGecis = false
  @State private var kalanHak = 5
  @State private var yonlendirme = ""
  @State private var rastgeleSayi = 0
  @State private var sonuc = false

  var body: some View {
    VStack{

        Text("Kalan Hak: \(kalanHak) ")
          .padding()
          .font(.largeTitle)

        Text("Yardım: \(yonlendirme)")
          .padding()

      TextField("Tahmin",text: $tahmin){

        }
        .textFieldStyle(.roundedBorder)
        .padding()


        Button("Tahmin Et"){

          kalanHak = kalanHak - 1
          if let tahmin = Int(tahmin) {
            if tahmin == rastgeleSayi {
              sonuc = true
              sonucEkraninaGecis = true
              return
            }
            if tahmin > rastgeleSayi {
              yonlendirme = "Azalt"
            }
            if tahmin < rastgeleSayi {
              yonlendirme = "Arttır"
            }
            if kalanHak == 0 {
              sonuc = false
              sonucEkraninaGecis = true
            }
          }

          tahmin = ""

        }.navigationDestination(isPresented: $sonucEkraninaGecis){
          Sonuc(sonuc: sonuc)
        }
        .onAppear{
          rastgeleSayi = Int.random(in: 0...10)
          print("Rastgele sayi: \(rastgeleSayi)")
          kalanHak = 5
          yonlendirme = ""
          tahmin = ""
        }
      }
    }
  }
#Preview {
  TahminEt()
}
