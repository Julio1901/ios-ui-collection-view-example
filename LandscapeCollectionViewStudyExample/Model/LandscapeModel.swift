//
//  LandscapeModel.swift
//  LandscapeCollectionViewStudyExample
//
//  Created by Julio Cesar Pereira on 23/04/24.
//

import Foundation

class LandscapeModel {
    func getLandscapeData() -> [LandscapeDTO]{
        var data = [LandscapeDTO]()
        for i in 1...20 {
            let landscapeDTO = LandscapeDTO()
            landscapeDTO.image = "landscape-\(i)"
            data.append(landscapeDTO)
        }
        return data
    }
}
