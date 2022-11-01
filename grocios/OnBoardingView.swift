//
//  OnBoardingView.swift
//  grocios
//
//  Created by Piyush Pandey on 01/11/22.
//

import SwiftUI

struct OnBoardingView: View {
    var body: some View {
			NavigationView {
				VStack(spacing: 30) {
					Spacer()
					Spacer()
					Spacer()
					Image("img")
						.resizable()
						.aspectRatio(contentMode: .fill)
						.padding()
					VStack(alignment: .leading, spacing: 10) {
						Text("Order your groceries with Grocios")
							.fontWeight(.bold)
							.font(.system(.largeTitle))
					}
					Spacer()
					NavigationLink(destination: HomeScreen()){
						RoundedRectangle(cornerRadius: 12)
							.fill(Color("6"))
							.frame(width: 280, height: 60, alignment: .trailing)
							.overlay {
								HStack(spacing: 10) {
									Text("Next")
										.font(.system(.title))
										.fontWeight(.bold)
									Image(systemName: "chevron.right")
								}.foregroundColor(.black)
							}
					}
					Spacer()
					Spacer()
				}
			}
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
