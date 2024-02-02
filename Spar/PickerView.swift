//
//  PickerView.swift
//  Spar
//
//  Created by Ксения Кобак on 03.02.2024.
//

import SwiftUI

struct PickerViewNew: View {
    @Binding var section: Int
    
    var body: some View {
        Picker("", selection: $section) {
            Text("Шт").tag(0)
            Text("Кг").tag(1)
        }
        .font(.system(size: 20))
        .pickerStyle(.segmented)
        .padding()
    }
}

