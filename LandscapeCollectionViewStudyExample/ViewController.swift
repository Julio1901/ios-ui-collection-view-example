//
//  ViewController.swift
//  LandscapeCollectionViewStudyExample
//
//  Created by Julio Cesar Pereira on 23/04/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func btnVerticalLandscapeAction(_ sender: Any) {
       performSegue(withIdentifier: "goToVerticalLandscapeStoryboard", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

