//
//  FruitCardView.swift
//  grocios
//
//  Created by Piyush Pandey on 01/11/22.
//

import SwiftUI

let images: FruitModel = FruitModel(id: 1, title: .apple, image: "apple", price: "100", color: "1")

struct FruitCardView: View {
	let fruits: FruitModel
	var body: some View {
		ZStack {
			VStack(alignment: .leading, spacing: 5) {
				Text(fruits.title.rawValue)
					.fontWeight(.bold)
					.font(.system(.title2))
				Text(fruits.price)
					.fontWeight(.medium)
					.font(.system(.title3))
					.opacity(0.6)
				Spacer()
			}
			.padding()
			.frame(width: 175, height: 150, alignment: .center)
			.background(Color(fruits.color))
			.cornerRadius(20)
			.shadow(color: Color(fruits.color), radius:8, x: 6, y: 6)
			.padding()
				
			Image(fruits.image)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 100, height: 100)
				.offset(y: 60)
		}
	}
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruits: images)
    }
}
