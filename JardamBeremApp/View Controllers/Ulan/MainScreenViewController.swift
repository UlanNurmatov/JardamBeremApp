//
//  MainScreenViewController.swift
//  JardamBeremApp
//
//  Created by Ulan Nurmatov on 7/31/18.
//  Copyright © 2018 Ulan Nurmatov. All rights reserved.
//

import UIKit

class MainScreenViewController: UIViewController, UICollectionViewDataSource {

    
    @IBOutlet weak var collectionView: UICollectionView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataManager.manager.categories!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoriesCell", for: indexPath) as! CollectionViewCell
        cell.setCategoryTitle(catergory: DataManager.manager.categories![indexPath.item])
        return cell
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    

   
}