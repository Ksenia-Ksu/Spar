//
//  MainImage.swift
//  Spar
//
//  Created by Ксения Кобак on 02.02.2024.
//

import SwiftUI

struct MainImage: View {
    var body: some View {
        VStack {
            PriceCard()
            Image("bake")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
    
    private struct PriceCard: View {
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
}

struct MainImage_Previews: PreviewProvider {
    static var previews: some View {
        MainImage()
    }
}
