//
//  SeachCollectionViewController.swift
//  Route
//
//  Created by Sho Nozaki on 2018/08/15.
//  Copyright © 2018年 sho.nozaki. All rights reserved.
//

import UIKit

class SeachCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    private var timelines: [Timeline] = Timelines.allTimelines() + Timelines.allTimelines()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Search"
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return timelines.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("Test SeachCollectionViewController")
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SearchCell", for: indexPath) as! SearchCollectionViewCell
        
        let timeline = timelines[indexPath.row]
        cell.timeline = timeline
        
        return cell
    }
    
    /**
     CollectionViewCellのサイズを設定
     
     */
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let screenWidth = UIScreen.main.bounds.width // 画面の横幅
        let width = screenWidth / 3
        return CGSize(width: width, height: width)
    }
    
    /**
     各CollectionViewCellの横スペース(列間隔の幅)を設定
     
     */
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    /**
     各CollectionViewCellの縦スペース(行間隔の幅)を設定
     */
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
}
