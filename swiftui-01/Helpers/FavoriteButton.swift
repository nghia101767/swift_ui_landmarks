//
//  FavoriteButton.swift
//  swiftui-01
//
//  Created by Nghia Nguyen on 3/20/21.
//

import SwiftUI

struct FavoriteButton: View {
	@Binding var isSet: Bool
    var body: some View {
		Button(action: {
			isSet.toggle()
		}, label: {
			Image(systemName: isSet ? "star.fill":"star")
				.foregroundColor(isSet ? .yellow : .gray)
		})
    }
}
