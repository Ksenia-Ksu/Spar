//
//  RaitingView.swift
//  Spar
//
//  Created by Ксения Кобак on 02.02.2024.
//

import SwiftUI

struct ProductView: View {
    var body: some View {
        VStack(spacing: 5) {
            HStack {
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("4.1")
                    Text("| 19 отзывов")
                        .foregroundColor(.gray)
                }
                Spacer()
                Button { } label: {
                   Text("-5 %")
                        .foregroundColor(.white)
                        .padding(7)
                        .background(Color.red)
                        .cornerRadius(10)
                }
            }
            MainText()
            CountryView()
        }
        .padding(.leading, 10)
        .padding(.trailing, 10)
    }
    
    private struct CountryView: View {
        var body: some View {
            HStack(alignment: .center, spacing: 15) {
                Image("flag")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50, alignment: .center)
                Text("Россия, Москва")
                    .padding(.top, 5)
                Spacer()
            }
        }
    }
    
    private struct MainText: View {
        var body: some View {
            HStack {
                Text("Торт Наполеон BOCCONTO 1,6кг")
                    .fontWeight(.bold)
                    .font(.system(size: 36))
                    .frame(alignment: .leading)
                Spacer()
            }
        }
    }
}

struct RaitingView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}
