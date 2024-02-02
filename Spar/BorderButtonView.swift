//
//  BorderButtonView.swift
//  Spar
//
//  Created by Ксения Кобак on 03.02.2024.
//

import SwiftUI

struct BorderButtonView: View {
    var body: some View {
        Button { } label:  {
            Text("Оставить отзыв")
                .bold()
                .frame(minWidth: 0, maxWidth: .infinity)
                .font(.system(size: 18))
                .padding()
                .foregroundColor(.green)
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.green, lineWidth: 5)
                )
        }
        .cornerRadius(25)
        .padding(.leading, 10)
        .padding(.trailing, 10)
    }
}

struct BorderButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BorderButtonView()
    }
}
