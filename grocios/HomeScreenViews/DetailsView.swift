//
//  DetailsView.swift
//  grocios
//
//  Created by Piyush Pandey on 02/11/22.
//

import SwiftUI

struct RoundedCorner: Shape {
	let corner: UIRectCorner
	let radius: CGFloat
	
	func path(in rect: CGRect) -> Path {
		let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSizeMake(radius, radius))
		
		return Path(path.cgPath)
	}
}

struct DetailsView: View {
	@State var fruit: fruitTitle
    var body: some View {
			VStack(alignment: .leading, spacing: 25) {
				Image("bg")
					.resizable()
					.edgesIgnoringSafeArea(.top)
					.clipShape(RoundedCorner.init(corner: [.bottomLeft, .bottomRight], radius: 60))
					.frame(width: .infinity, height: .infinity, alignment: .top)
					.shadow(color: .gray, radius: 8, x: 4, y: 4)
					.overlay {
						Image("\(fruit.rawValue)")
							.resizable()
							.frame(width: 250, height: 250, alignment: .center)
							
					}
				Spacer()
				Text("\(fruit.rawValue.capitalized)")
					.padding(.horizontal)
			}
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(fruit: .apple)
    }
}
