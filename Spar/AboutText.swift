//
//  AboutText.swift
//  Spar
//
//  Created by Ксения Кобак on 02.02.2024.
//

import SwiftUI


struct AboutText: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ForEach(products ,id: \.self) { id in
                HStack {
                    Text(id.name)
                        .frame(alignment: .leading)
                        .lineLimit(4)
                    Text(id.dottedLine)
                        .layoutPriority(-1)
                        .foregroundColor(.gray)
                    Text(id.title)
                        .lineLimit(3)
                        .frame( alignment: .trailing)
                        
                }
                .lineLimit(1)
            }
        }
        .padding(.leading, 10)
        .padding(.trailing, 10)
    }
}

struct AboutText_Previews: PreviewProvider {
    static var previews: some View {
        AboutText()
    }
}



