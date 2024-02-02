//
//  MainText.swift
//  Spar
//
//  Created by Ксения Кобак on 02.02.2024.
//

import SwiftUI

struct MainText: View {
    var body: some View {
        HStack {
            Text("Торт Наполеон BOCCONTO 1,6кг")
                .fontWeight(.bold)
                .font(.system(size: 36))
                .frame(alignment: .leading)
            Spacer()
        }
        .padding(.leading, 10)
    }
}

struct MainText_Previews: PreviewProvider {
    static var previews: some View {
        MainText()
    }
}
