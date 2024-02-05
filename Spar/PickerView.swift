//
//  PickerView.swift
//  Spar
//
//  Created by Ксения Кобак on 03.02.2024.
//

import SwiftUI

struct PickerView: View {
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        Picker("", selection: $viewModel.selectedItem) {
            Text("Шт").tag(0)
            Text("Кг").tag(1)
        }
        .font(.system(size: 20))
        .pickerStyle(.segmented)
        .padding()
    }
}

