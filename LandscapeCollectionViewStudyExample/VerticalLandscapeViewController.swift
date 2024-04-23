//
//  VerticalLandscapeViewController.swift
//  LandscapeCollectionViewStudyExample
//
//  Created by Julio Cesar Pereira on 23/04/24.
//

import UIKit

class VerticalLandscapeViewController: UIViewController, UICollectionViewDataSource {
    
    
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
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "verticalLandscapeCell", for: indexPath) as! LandscapeCollectionViewCell
        cell.prepareCell(landscapeDTO: landscapeItens[indexPath.item])
        return cell
    }
    
    
}
