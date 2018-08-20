//
//  PostViewController.swift
//  Route
//
//  Created by Sho Nozaki on 2018/08/15.
//  Copyright © 2018年 sho.nozaki. All rights reserved.
//

import UIKit

protocol PostViewControllerDelegate {
    func postViewControllerDidPost(timeline: Timeline)
}

class PostViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var postTopTitleText: UITextField!
    @IBOutlet weak var postTopStartText: UITextField!
    @IBOutlet weak var postTopGoalText: UITextField!
    @IBOutlet weak var postTopImageView: UIImageView!
    
    private var image: UIImage? = nil {
        didSet {
            postTopImageView.image = image
        }
    }
    
    var delegate: PostViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func postButtonTapped(_ sender: Any) {
        
        guard let image = image else {
            return
        }
        
        let postTopTitle = postTopTitleText.text
        let postTopStart = postTopStartText.text
        let postTopGoal = postTopGoalText.text
        
        let user = Users.myUser()
        let timeline = Timeline(user: user, postTitle: postTopTitle!, postStartPlace: postTopStart!, postGoalPlace: postTopGoal!, postTopImage: image, isLiked: false, likedCount: 0, postComment: "", time: "")
        delegate?.postViewControllerDidPost(timeline: timeline)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func imageViewTapped(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        imagePicker.allowsEditing = false
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if info[UIImagePickerControllerOriginalImage] != nil {
            let image = info[UIImagePickerControllerOriginalImage] as! UIImage
            self.image = image
            dismiss(animated: true, completion: nil)
        }
    }
}
