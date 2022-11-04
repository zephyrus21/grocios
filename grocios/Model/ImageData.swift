//
//  ImageData.swift
//  grocios
//
//  Created by Piyush Pandey on 01/11/22.
//

import Foundation

enum fruitTitle: String {
	case apple, apricot, avocado, banana, blackberry, cherry, dragonfruit, fig, grapes, kiwi, lemon, mango, muskmelon, orange, papaya, pear, pineapple, plum, raspberry, strawberry, watermelon
}

struct FruitModel {
	var id: Int
	var title: fruitTitle
	var image: String
	var price: String
	var color: String
}
