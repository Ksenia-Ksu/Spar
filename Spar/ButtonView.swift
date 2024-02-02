//
//  ButtonView.swift
//  Spar
//
//  Created by Ксения Кобак on 02.02.2024.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        HStack {
            Button { } label: {
                Text("Все характеристики")
                    .bold()
                    .font(.system(size: 20))
                    .foregroundColor(.green)
            }
            Spacer()
        }
        .padding(.all, 10)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
