//
//  MapView.swift
//  swiftui-01
//
//  Created by Nghia Nguyen on 3/19/21.
//

import SwiftUI
import MapKit

struct MapView: View {
	var coordinate: CLLocationCoordinate2D
	@State private var region = MKCoordinateRegion()
	
    var body: some View {
		Map(coordinateRegion: $region)
			.onAppear{
				setRegion(coordinate)
			}
    }
	private func setRegion(_ coordinate: CLLocationCoordinate2D){
		region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
	}
}
