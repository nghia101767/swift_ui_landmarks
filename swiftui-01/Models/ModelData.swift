//
//  ModelData.swift
//  swiftui-01
//
//  Created by Nghia Nguyen on 3/20/21.
//

import Foundation
import Combine

final class ModelData: ObservableObject{
	@Published var landmarks: [Landmark] = load("landmarkData.json")
}
func load<T: Decodable>(_ fileName: String)-> T{
	var data = Data()
	guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else {
		fatalError("could not find \(fileName) in the main bundle")
	}
	do{
		data = try! Data(contentsOf: file)
	}catch{
		fatalError("Could not load \(fileName) of the main bundle, error: \(error)")
	}
	do{
		let decoder = JSONDecoder()
		return try decoder.decode(T.self, from: data)
	}catch{
		fatalError("Could not parse \(fileName) as \(T.self): \n\(error)")
	}
}
