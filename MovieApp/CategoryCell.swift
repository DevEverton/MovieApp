//
//  CategoryCell.swift
//  MovieApp
//
//  Created by Everton Carneiro on 06/12/17.
//  Copyright © 2017 Everton. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}

//extension CategoryCell: UICollectionViewDataSource {
//  
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return CategoryCell.categories.count
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let videoCell = collectionView.dequeueReusableCell(withReuseIdentifier: "videoCell", for: indexPath) as! VideoCell
//        
//        videoCell.videoImage.image = CategoryCell.categories["Action"]?[indexPath.row]
//        
//
//        return videoCell
//    }
//    
//    
//}


//extension CategoryCell : UICollectionViewDelegateFlowLayout {
//    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//        return CGSize(width: 90, height: 180)
//    }
//    
//}

