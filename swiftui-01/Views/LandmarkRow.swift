//
//  LandmarkRow.swift
//  swiftui-01
//
//  Created by Nghia Nguyen on 3/20/21.
//

import SwiftUI

struct LandmarkRow: View {
	@State var item: Landmark
    var body: some View {
		HStack{
			item.image.resizable()
				.frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
			Text(item.name).font(.title)
			Spacer()
			
			if item.isFavorite {
				Image(systemName: "star.fill")
					.foregroundColor(.yellow)
			}
		}
    }
}
