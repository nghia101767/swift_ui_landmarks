//
//  LandmarkList.swift
//  swiftui-01
//
//  Created by Nghia Nguyen on 3/20/21.
//

import SwiftUI

struct LandmarkList: View {
	@EnvironmentObject var modelData: ModelData
	@State var showFavoriteOnly: Bool = false
	var filteredLandmarks: [Landmark]{
		modelData.landmarks.filter {!showFavoriteOnly || $0.isFavorite}
	}
	var body: some View {
		NavigationView{
			
			List{
				Toggle(isOn: $showFavoriteOnly){
					Text("Favorites only")
				}
				ForEach(filteredLandmarks){ landmark in
					NavigationLink(destination: LandmarkDetail(landmark: landmark)){
						LandmarkRow(item: landmark)
					}
				}
			}
			.navigationTitle("Landmarks")
		}
	}
}
