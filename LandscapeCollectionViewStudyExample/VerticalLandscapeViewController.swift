//
//  VerticalLandscapeViewController.swift
//  LandscapeCollectionViewStudyExample
//
//  Created by Julio Cesar Pereira on 23/04/24.
//

import UIKit

class VerticalLandscapeViewController: UIViewController, UICollectionViewDataSource {
    
    struct CollectionViewTags {
        static let CELL_IMAGE = 100
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let landscapeModel = LandscapeModel()
    var landscapeItens = [LandscapeDTO]()
  

    override func viewDidLoad() {
        super.viewDidLoad()
        landscapeItens = landscapeModel.getLandscapeData()
        collectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return landscapeItens.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "verticalLandscapeCell", for: indexPath)
        if let imageView = cell.contentView.viewWithTag(CollectionViewTags.CELL_IMAGE) as? UIImageView {
            let imageName = self.landscapeItens[indexPath.item].image
            imageView.image = UIImage( named: imageName)
        }
        return cell
    }
    
    
}
