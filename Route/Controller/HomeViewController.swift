//
//  HomeViewController.swift
//  Route
//
//  Created by Sho Nozaki on 2018/08/13.
//  Copyright © 2018年 sho.nozaki. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, PostViewControllerDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    private var timelines: [Timeline] = Timelines.allTimelines() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // デフォルトの高さを指定
        tableView.estimatedRowHeight = 200
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
     セクション数の設定
     - return: セクション数(=投稿一覧数)
     */
    func numberOfSections(in tableView: UITableView) -> Int {
        return timelines.count
    }
    
    /**
     
     */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    /**
     各セクションのセルを指定
     */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TimelineCell") as! TimelineTableViewCell

        let timeline = timelines[indexPath.section]
        cell.timeline = timeline
        
        cell.likedlock = { [weak self, weak cell] in
            guard var newTimeline = cell?.timeline else {
                return
            }
            if newTimeline.isLiked {
                newTimeline.isLiked = false
                newTimeline.likedCount -= 1
            } else {
                newTimeline.isLiked = true
                newTimeline.likedCount += 1
            }
            
            self?.timelines[indexPath.section] = newTimeline
            cell?.timeline = self?.timelines[indexPath.section]
        }

        return cell
        
//        print(indexPath.row)
//        switch indexPath.row {
//        case 0:
//            // headerセル
//            let cell = tableView.dequeueReusableCell(withIdentifier: "headerCell") as! HeaderTableViewCell
//            cell.selectionStyle = .none // セル選択時のアニメーション設定⇒なし
//            let timeline = timelines[indexPath.section]
//            cell.timeline = timeline
//            return cell
//        default:
//            // timelineセル
//            let cell = tableView.dequeueReusableCell(withIdentifier: "TimelineCell") as! TimelineTableViewCell
//            cell.selectionStyle = .none // セル選択時のアニメーション設定⇒なし
//            let timeline = timelines[indexPath.section]
//            cell.timeline = timeline
//            return cell
//        }
    }
    
    /**
     HeaderTableViewCellの設定
     
     - note: 各セクションにheaderセルを挿入する
     */
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell") as! HeaderTableViewCell
        
        let timeline = timelines[section]
        cell.timeline = timeline

        return cell
    }

    /**
     HeaderTableViewCellの高さを設定
     
     - note: headerセルの高さを固定する
     */
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 48
    }
    
    func postViewControllerDidPost(timeline: Timeline) {
        var newTimelines = timelines
        newTimelines.insert(timeline, at: 0)
        timelines = newTimelines
    }
    
    @IBAction func composeButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "PostViewController") as! PostViewController
        vc.delegate = self
        present(vc, animated: true, completion: nil)
    }
}
