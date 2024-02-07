//
//  AboutText.swift
//  Spar
//
//  Created by Ксения Кобак on 02.02.2024.
//

import SwiftUI

struct AboutProduct: View {
    var body: some View {
        VStack {
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
            
            ButtonView()
        }
    }
    
    private struct ButtonView: View {
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
}

struct AboutText_Previews: PreviewProvider {
    static var previews: some View {
        AboutProduct()
    }
}



