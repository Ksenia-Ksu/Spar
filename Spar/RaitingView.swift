//
//  RaitingView.swift
//  Spar
//
//  Created by Ксения Кобак on 02.02.2024.
//

import SwiftUI

struct RaitingView: View {
    var body: some View {
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
    }
}

struct RaitingView_Previews: PreviewProvider {
    static var previews: some View {
        RaitingView()
    }
}
