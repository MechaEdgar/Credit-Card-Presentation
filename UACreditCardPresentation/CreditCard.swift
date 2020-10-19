//
//  CreditCard.swift
//  UACreditCardPresentation
//
//  Created by Edgar Escorza on 19/10/20.
//

import SwiftUI

struct CreditCard<Content>: View where Content: View {
    
    var content: () -> Content
    
    var body: some View {
        content()
    }
}

struct CreditCardFront : View {
    var body: some View {
        VStack {
            Text("FRONT").foregroundColor(Color.white)
        }.frame(width: 300, height: 200)
        .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(10)
    }
}

struct CreditCardBack : View {
    var body: some View {
        VStack {
            Text("BACK").foregroundColor(Color.white)
        }.frame(width: 300, height: 200)
        .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(10)
    }
}

struct CreditCard_Previews: PreviewProvider {
    static var previews: some View {
        CreditCard<CreditCardFront>(content: { CreditCardFront() })
    }
}
