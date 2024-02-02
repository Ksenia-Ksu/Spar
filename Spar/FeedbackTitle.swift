//
//  FeedbackTitle.swift
//  Spar
//
//  Created by Ксения Кобак on 02.02.2024.
//

import SwiftUI

struct FeedbackTitle: View {
    var body: some View {
        HStack {
            Text("Отзывы")
                .bold()
                .font(.system(size: 20))
            Spacer()
            Button { } label: {
                Text("Все отзывы")
                    .bold()
                    .font(.system(size: 20))
                    .foregroundColor(.green)
            }
        }
    }
}

struct FeedbackTitle_Previews: PreviewProvider {
    static var previews: some View {
        FeedbackTitle()
    }
}
