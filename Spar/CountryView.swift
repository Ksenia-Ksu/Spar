//
//  CountryView.swift
//  Spar
//
//  Created by Ксения Кобак on 02.02.2024.
//

import SwiftUI

struct CountryView: View {
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
        .padding()
    }
}

struct CountryView_Previews: PreviewProvider {
    static var previews: some View {
        CountryView()
    }
}
