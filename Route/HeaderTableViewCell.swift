//
//  HeaderTableViewCell.swift
//  Route
//
//  Created by Sho Nozaki on 2018/08/13.
//  Copyright © 2018年 sho.nozaki. All rights reserved.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    
    var timeline: Timeline? {
        didSet {
            guard let timeline = timeline else {
                return
            }
            
            profileImageView.image = UIImage(named: timeline.user.profileImage)
            userNameLabel.text = timeline.user.userName
        }
    }
    
    /**
     profileImageの整形
     */
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // profileImageを丸くする
        profileImageView.layer.cornerRadius = profileImageView.layer.bounds.width / 2
        profileImageView.clipsToBounds = true
    }

}
