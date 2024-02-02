//
//  MainImage.swift
//  Spar
//
//  Created by Ксения Кобак on 02.02.2024.
//

import SwiftUI

struct MainImage: View {
    var body: some View {
        Image("bake")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
    }
}

struct MainImage_Previews: PreviewProvider {
    static var previews: some View {
        MainImage()
    }
}
