//
//  ContentView.swift
//  MidTermRecorded01
//
//  Created by JPL-ST-SPRING2022 on 10/28/22.
//

import SwiftUI

struct ContentView: View {
    @State private var imgName = "Hamburger"
    @State private var priceLabel = "4.99"
    @State private var unitStr = "1"
    @State private var totalAmt = 0.0
    
    var body: some View {
        Text("How May I Take Your Order?")
            .padding()
        
        ZStack {
            Color.cyan
            
            VStack {
            
            Image(imgName)
                .resizable()
                .frame(width:300, height: 200, alignment: .center)
                .scaledToFit()
                .padding(20)
            
            Text(priceLabel)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
            HStack {
                Text("Quantity: ")
                    .padding(.leading, 50.0)
                TextField("1", text: $unitStr)
                    .border(Color(UIColor.separator))
                    .padding(.all)
            }
            
            Button("Show Next Dish") {
                if(imgName == "Hamburger") {
                    imgName = "Pizza"
                    priceLabel = "Pizza: 5.99"
                    unitStr = "1"
                    totalAmt = 0.0
                } else if imgName == "Pizza" {
                    imgName = "Sushi"
                    priceLabel = "Sushi: 6.99"
                    unitStr = "1"
                    totalAmt = 0.0
                } else if imgName == "Sushi" {
                    imgName = "Crepes"
                    priceLabel = "Crepes: 7.99"
                    unitStr = "1"
                    totalAmt = 0.0
                } else if imgName == "Crepes" {
                    imgName = "Fries"
                    priceLabel = "Fries: 8.99"
                    unitStr = "1"
                    totalAmt = 0.0
                } else {
                    imgName = ""
                    priceLabel = "Out Of Options"
                    unitStr = "1"
                    totalAmt = 0.0
                }
            }
            .font(.caption)
            .buttonStyle(.borderedProminent)
            .padding()
                Button("Order This Dish") {
                    let unit = Double(unitStr)
                    
                    if imgName == "Hamburger" {
                        totalAmt = unit! * 5.99
                    } else if imgName == "Pizza" {
                        totalAmt = unit! * 6.99
                    } else if imgName == "Sushi" {
                        totalAmt = unit! * 7.99
                    } else if imgName == "Friens" {
                        totalAmt = unit! * 8.99
                    } else {
                        totalAmt = 0.0
                    }
                }
            .font(.caption)
            .buttonStyle(.borderedProminent)
            .padding()
                
                Text("Total Payment: $\(totalAmt, specifier: "%.2f")")
                    .padding()
        }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
