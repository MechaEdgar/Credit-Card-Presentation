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
    
    var body: some View {
        CreditCard {
            
            Group {
                if flipped {
                    CreditCardBack()
                } else {
                    CreditCardFront()
                }
            }
            
        }.onTapGesture {
            withAnimation {
                degrees += 180
                flipped.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
