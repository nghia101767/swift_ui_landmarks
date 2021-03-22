//
//  Detail.swift
//  swiftui-01
//
//  Created by Nghia Nguyen on 3/20/21.
//

import SwiftUI


struct LandmarkDetail: View {
	@EnvironmentObject var modelData: ModelData
	var landmark: Landmark
	var lanmarkIndex: Int{
		modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
	}
	var body: some View {
		ScrollView{
			MapView(coordinate: landmark.locationCoordinate)
				.ignoresSafeArea().frame(height: 300)
			CircleImage(image: landmark.image)
				.offset(y: -130)
				.padding(.bottom, -130)
			VStack(alignment: .leading, spacing: 10.0){
				Text(landmark.name).font(.title)
				HStack(alignment: .center){
					Text(landmark.park).font(.subheadline)
					Spacer()
					Text(landmark.state).font(.subheadline)
				}.font(.subheadline)
				.foregroundColor(.secondary)
				Divider()
				Text("About \(landmark.name)").font(.title2)
				Text(landmark.description)
			}.padding()
			Spacer()
		}
		.navigationTitle("\(landmark.name)")
		.navigationBarTitleDisplayMode(.inline)
	}
}
