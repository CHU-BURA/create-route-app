//
//  SearchCollectionViewCell.swift
//  Route
//
//  Created by Sho Nozaki on 2018/08/15.
//  Copyright © 2018年 sho.nozaki. All rights reserved.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var searchImageView: UIImageView!
    
    var timeline: Timeline? {
        didSet {
            guard let timeline = timeline else {
                return
            }
            print(timeline)
            searchImageView.image = timeline.postTopImage
        }
    }
}
