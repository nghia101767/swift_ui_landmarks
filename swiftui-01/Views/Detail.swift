//
//  Detail.swift
//  swiftui-01
//
//  Created by Nghia Nguyen on 3/20/21.
//

import SwiftUI

struct LandmarkDetail: View {
	var body: some View {
		VStack{
			MapView().ignoresSafeArea().frame(height: 300)
			CircleImage()
				.offset(y: -130)
				.padding(.bottom, -130)
			VStack(alignment: .leading, spacing: 10.0){
				Text("Turtle Rock").font(.title)
				HStack(alignment: .center){
					Text("Joshua Tree National Park").font(.subheadline)
					Spacer()
					Text("California").font(.subheadline)
				}.font(.subheadline)
				.foregroundColor(.secondary)
				Divider()
				Text("About Turtle Rock").font(.title2)
				Text("Description Turtle Rock")
			}.padding()
			Spacer()
		}
	}
}
