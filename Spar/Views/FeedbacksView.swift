//
//  FeedbackCellView.swift
//  Spar
//
//  Created by Ксения Кобак on 02.02.2024.
//

import SwiftUI

struct FeedbacksView: View {
    
    var body: some View {
        VStack {
            FeedbackTitle()
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(feedbacks, id: \.self) { feedback in Cell(feedback: feedback)
                    }
                }
                .padding(.top)
                .padding(.bottom)
                .padding(.leading, 3)
            }
            BorderButtonView()
        }
    }
    
    private struct Cell: View {
        var feedback: Feedback
        var body: some View {
            VStack(alignment: .leading, spacing: 10) {
                Text(feedback.name)
                    .bold()
                Text(feedback.date)
                    .foregroundColor(.gray)
                HStack(spacing: 0) {
                    ForEach(0..<5) { index in
                        Image(systemName: imageName(for: index, value: feedback.raiting))
                    }
                }
                .foregroundColor(.yellow)
                Text(feedback.text)
                    .lineLimit(3)
                Spacer()
            }
            .frame(width: 200)
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .clipped()
            .shadow(color: Color.secondary, radius: 10, x: 0, y: 0)
        }
        
        private func imageName(for starIndex: Int, value: Double) -> String {
            
            if value >= Double(starIndex + 1) {
                return "star.fill"
            }
            else if value >= Double(starIndex) + 0.5 {
                return "star.leadinghalf.filled"
            }
            else {
                return "star"
            }
        }
    }
    private struct BorderButtonView: View {
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
    
    private struct FeedbackTitle: View {
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
            .padding(.all, 10)
        }
    }
}

struct FeedbackCellView_Previews: PreviewProvider {
    static var previews: some View {
        FeedbacksView()
    }
}




