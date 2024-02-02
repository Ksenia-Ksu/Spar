//
//  PriceCard.swift
//  Spar
//
//  Created by Ксения Кобак on 02.02.2024.
//

import SwiftUI

struct PriceCard: View {
    var body: some View {
        HStack {
            Button { } label: {
               Text("Цена по карте")
                    .foregroundColor(.white)
                    .padding(7)
                    .background(Color.green)
                    .cornerRadius(10)
            }
            Spacer()
        }
        .padding()
    }
}

struct PriceCard_Previews: PreviewProvider {
    static var previews: some View {
        PriceCard()
    }
}
