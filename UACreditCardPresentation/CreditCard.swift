//
//  CreditCard.swift
//  UACreditCardPresentation
//
//  Created by Edgar Escorza on 19/10/20.
//

import SwiftUI

struct CreditCard: View {
    var body: some View {
        CreditCardFront()
    }
}

struct CreditCardFront : View {
    var body: some View {
        VStack {
            Text("FRONT").foregroundColor(Color.white)
        }.frame(width: 300, height: 200)
        .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint : .leading, endPoint: : trailing))
    }
}

struct CreditCard_Previews: PreviewProvider {
    static var previews: some View {
        CreditCard()
    }
}
