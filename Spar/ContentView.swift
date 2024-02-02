//
//  ContentView.swift
//  Spar
//
//  Created by Ксения Кобак on 02.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State var selectedItem: Int
    var body: some View {
        TabView {
            NavigationView {
                ScrollView {
                    VStack(spacing: 10) {
                        Group {
                            PriceCard()
                            MainImage()
                            RaitingView()
                            MainText()
                            CountryView()
                            AboutText()
                            ButtonView()
                            FeedbackTitle()
                            FeedbacksView()
                            BorderButtonView()
                        }
                    }
                    VStack(spacing: 10) {
                        PickerViewNew(section: $selectedItem)
                    }
                    .toolbar {
                        ToolbarItemGroup(placement: .navigationBarTrailing) {
                            
                            Button { } label: {
                                Image(systemName: "doc.plaintext")
                            }
                            Button { } label: {
                                Image(systemName: "arrow.up.doc")
                            }
                            Button { } label: {
                                Image(systemName: "heart")
                            }
                        }
                        ToolbarItem(placement: .navigationBarLeading)  {
                            Button { } label: {
                                Image(systemName: "arrow.left")
                            }
                        }
                    }
                }
            }
            .tabItem {
                Label("Главная", systemImage: "tree.circle")
                    .accentColor(.green)
            }
            
            
            
            
            
            ///////////////
            Text("Hello, world!")
                .tabItem {
                    Label("Каталог", systemImage: "rectangle.grid.2x2")
                }
            
            Text("Hello, world!")
                .tabItem {
                    Label("Корзина", systemImage: "cart")
                }
            
            Text("Hello, world!")
                .tabItem {
                    Label("Профиль", systemImage: "person")
                }
        }
        .accentColor(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(selectedItem: 0)
    }
}
