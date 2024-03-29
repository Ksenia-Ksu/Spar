//
//  Data.swift
//  Spar
//
//  Created by Ксения Кобак on 02.02.2024.
//

import Foundation

struct Feedback: Hashable {
    let name: String
    let date: String
    let raiting: Double
    let text: String
}

struct Product: Hashable {
    let name: String
    let title: String
    
    var dottedLine: String {
        var line = ""
        for _ in 0...100 {
            line.append(".")
        }
        return line
    }
}

class ViewModel: ObservableObject {
    @Published var selectedItem: Int = 0
    @Published var isThing = true
    @Published var amount = 1
    
    func setIsThing() {
        isThing = !isThing
    }
    
    func checkAmount() {
        if amount < 1 {
            amount = 1
        }
    }
}

let feedbacks = [
    Feedback(name: "Александр В.", date: "7 мая 2005", raiting: 3, text: "Я не в восторге)) за такие деньги могло бы быть и лучше. Коржи клеклые, крем неплохой. Другие торты намного вкуснее. Не рекомендую."),
    Feedback(name: "Олег Ж.", date: "17 мая 2008", raiting: 5, text: "Да ну вас..эти плохие отзывы. Очень вкусный был торт, съели весь за столом. Очень нежный, не зря больше всего у него отзывов, чую самый ходовой торт в спаре. Жаль ценник подняли, но благо взяла ещё по старой цене. Советую от души."),
    Feedback(name: "Ольга Н.", date: "17 июля 2009", raiting: 5, text: "Отличный торт"),
    Feedback(name: "Женя П.", date: "17 июля 2009", raiting: 3, text: "Покупаем второй раз этот торт с разницей в 4 месяца. Первый раз, когда попробовали, всем очень понравился, в меру приторный, прям очень вкусный был. Сейчас же, такое ощущение, будто съел ведро майонеза. Очень жирный и калорийный, вплоть до проблемы с желудком. Маргарин в составе на второй месте после муки. Больше такой брать не будем( Нижний Новгород, Волжская набережная")
]

let products = [
    Product(name: "Производство", title: "Россия, Москва"),
    Product(name: "Энергетическая \nценность, \nккал/100гр", title: "250 ккал, 105 кДж"),
    Product(name: "Вес нетто", title: "1.6 кг"),
    Product(name: "Вес продукта", title: "1.6 кг"),
    Product(name: "Углеводы/100 г", title: "1,3 г")
]




