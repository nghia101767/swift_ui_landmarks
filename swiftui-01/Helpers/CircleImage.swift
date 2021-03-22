//
//  CircleImage.swift
//  swiftui-01
//
//  Created by Nghia Nguyen on 3/19/21.
//

import SwiftUI

struct CircleImage: View {
	var image: Image
    var body: some View {
		image.frame(width: 250, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).clipShape(Circle())
			.overlay(Circle().stroke(Color.white, lineWidth: 4))
			.shadow(radius: 7)
    }
}
