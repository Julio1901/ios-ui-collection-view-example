//
//  LandscapeCollectionViewCell.swift
//  LandscapeCollectionViewStudyExample
//
//  Created by Julio Cesar Pereira on 23/04/24.
//

import UIKit

class LandscapeCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var imageCell: UIImageView!
    
    func prepareCell (landscapeDTO: LandscapeDTO) {
        imageCell.image = UIImage(named: landscapeDTO.image)
    }
}
