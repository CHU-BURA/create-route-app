//
//  TimelineTableViewCell.swift
//  Route
//
//  Created by Sho Nozaki on 2018/08/13.
//  Copyright © 2018年 sho.nozaki. All rights reserved.
//

import UIKit

class TimelineTableViewCell: UITableViewCell {

    @IBOutlet weak var postTitleLabel: UILabel!
    @IBOutlet weak var postStartLabel: UILabel!
    @IBOutlet weak var postGoalLabel: UILabel!
    @IBOutlet weak var postTopImageView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    
    var timeline: Timeline? {
        didSet {
            guard let timeline = timeline else {
                return
            }
            postTitleLabel.text = timeline.postTitle
            postStartLabel.text = timeline.postStartPlace
            postGoalLabel.text = timeline.postGoalPlace
            postTopImageView.image = timeline.postTopImage
            likeCountLabel.text = "\(timeline.likedCount) likes"
            commentLabel.text = timeline.postComment
            // likeボタン表示切り替え
            if timeline.isLiked {
                likeButton.setBackgroundImage(UIImage(named: "Activity-on"), for: .normal)
            } else {
                likeButton.setBackgroundImage(UIImage(named: "Activity"), for: .normal)
            }
        }
    }
    
    var likedlock: (() -> Void)?
    
    
    @IBAction func likeButtonTapped(_ sender: Any) {
        likedlock?()
    }
    
}
