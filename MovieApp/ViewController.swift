//
//  ViewController.swift
//  MovieApp
//
//  Created by Everton Carneiro on 06/12/17.
//  Copyright © 2017 Everton. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var categories = ["Action", "Drama", "Science/Fiction", "Kids", "Horror"]
    
    var movies = ["Action":[#imageLiteral(resourceName: "action1"), #imageLiteral(resourceName: "action2"), #imageLiteral(resourceName: "action3"), #imageLiteral(resourceName: "action4"), #imageLiteral(resourceName: "action5"), #imageLiteral(resourceName: "action6")], "Drama":[#imageLiteral(resourceName: "drama1"), #imageLiteral(resourceName: "drama2"), #imageLiteral(resourceName: "drama3"), #imageLiteral(resourceName: "drama4"), #imageLiteral(resourceName: "drama5"), #imageLiteral(resourceName: "drama6")], "Science/Fiction":[#imageLiteral(resourceName: "science1"), #imageLiteral(resourceName: "science2"), #imageLiteral(resourceName: "science3"), #imageLiteral(resourceName: "science4"), #imageLiteral(resourceName: "science5"), #imageLiteral(resourceName: "science6")], "Kids":[#imageLiteral(resourceName: "kids1"), #imageLiteral(resourceName: "kids2"), #imageLiteral(resourceName: "kids3"), #imageLiteral(resourceName: "kids4"), #imageLiteral(resourceName: "kids5"), #imageLiteral(resourceName: "kids6")], "Horror":[#imageLiteral(resourceName: "horror1"), #imageLiteral(resourceName: "horror2"), #imageLiteral(resourceName: "horror3"), #imageLiteral(resourceName: "horror4"), #imageLiteral(resourceName: "horror5"), #imageLiteral(resourceName: "horror6")] ]

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return categories[section]
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view:UIView, forSection: Int) {
        guard let headerTitle = view as? UITableViewHeaderFooterView else {fatalError()}
        headerTitle.textLabel?.textColor = .white
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CategoryCell else{ fatalError() }
        
        cell.collectionView.dataSource = self
        cell.collectionView.delegate = self
        cell.collectionView.tag = indexPath.section
        cell.collectionView.reloadData()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
        
    }
    
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies["Action"]!.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let videoCell = collectionView.dequeueReusableCell(withReuseIdentifier: "videoCell", for: indexPath) as! VideoCell
        
        switch collectionView.tag {
        case 0: videoCell.videoImage.image = movies["Action"]?[indexPath.row]
        case 1: videoCell.videoImage.image = movies["Drama"]?[indexPath.row]
        case 2: videoCell.videoImage.image = movies["Science/Fiction"]?[indexPath.row]
        case 3: videoCell.videoImage.image = movies["Kids"]?[indexPath.row]
        case 4: videoCell.videoImage.image = movies["Horror"]?[indexPath.row]
        default: break
        }
        
        return videoCell
    }
  
}


extension ViewController : UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        return CGSize(width: 100, height: 180)
    }

}

