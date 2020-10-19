//
//  ContentView.swift
//  UACreditCardPresentation
//
//  Created by Edgar Escorza on 19/10/20.
//

import SwiftUI

struct ContentView: View {
    @State private var degrees: Double = 0
    @State private var flipped: Bool = false
    
    @State private var name: String = ""
    @State private var expires: String = ""
    @State private var cvv: String = ""
    
    var body: some View {
        VStack {
            CreditCard {
                
                VStack {
                    Group {
                        if flipped {
                            CreditCardBack()
                        } else {
                            CreditCardFront(name: name, expires: expires)
                        }
                    }
                }.rotation3DEffect(
                    .degrees(degrees),
                    axis: (x: 0.0, y: 1.0, z: 0.0)
                )
                    
                
            }.onTapGesture {
                withAnimation {
                    degrees += 180
                    flipped.toggle()
                }
        }
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.top, .leading, .trailing])
            
            TextField("Expiration Date", text: $expires)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.top, .leading, .trailing])
            
            TextField("CVV", text: $cvv)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.top, .leading, .trailing])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
