//
//  PriceCountView.swift
//  Spar
//
//  Created by Ксения Кобак on 03.02.2024.
//

import SwiftUI

struct PriceCountView: View {
    @ObservedObject var viewModel: ViewModel = ViewModel()
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Text(viewModel.isThing ? "120 р/шт" : "55 р/кг")
                        .bold()
                        .font(.system(size: 36))
                }
                Text("199,9")
                    .foregroundColor(.gray)
                    .strikethrough(color: .gray)
            }
            Spacer()
            HStack {
                Button {
                    viewModel.amount -= 1
                    viewModel.checkAmount()
                } label:  {
                    Text("-")
                        .bold()
                        .font(.system(size: 36))
                        .foregroundColor(.white)
                        .background(Color.green)
                }
                .padding()
                
                VStack() {
                    HStack {
                        Text(String(viewModel.amount))
                        Text(viewModel.isThing == true ? "шт" : "кг")
                    }
                    .font(.system(size: 23).bold())
                    Text(String(120.00 * Double(viewModel.amount)))
                }
                .foregroundColor(.white)
            
            
                Button {
                    viewModel.amount += 1
                } label:  {
                    Text("+")
                        .bold()
                        .font(.system(size: 36))
                        .foregroundColor(.white)
                       
                }
                .padding()
            }
            .background(Color.green)
            .cornerRadius(40)
        }
        .padding(.leading, 10)
        .padding(.trailing, 10)
    }
}

struct PriceCountView_Previews: PreviewProvider {
    static let viewModel = ViewModel.self
    static var previews: some View {
        PriceCountView()
    }
}

