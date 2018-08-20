//
//  Timelines.swift
//  Route
//
//  Created by Sho Nozaki on 2018/08/13.
//  Copyright © 2018年 sho.nozaki. All rights reserved.
//

import UIKit

class Timelines {
    static func allTimelines() -> [Timeline] {
        var timelines: [Timeline] = []
        
        timelines.append(Timeline(
            user: User(userName: "のん", profileImage: "hiyoko"),
            postTitle: "1泊2日🚃箱根旅行",
            postStartPlace: "新宿",
            postGoalPlace: "箱根湯本",
            postTopImage: UIImage(named: "image1")!,
            isLiked: false,
            likedCount: 3245,
            postComment: "@jump_junkie – Sky diving in Arizona.",
            time: "12 MINUTES AGO"
        ))
        timelines.append(Timeline(user: User(userName: "Luke", profileImage: "profile1"), postTitle: "3泊４日✈北海道旅行", postStartPlace: "成田空港", postGoalPlace: "札幌", postTopImage: UIImage(named: "image2")!, isLiked: false, likedCount: 344, postComment: "Once known for taking amazing video footage of sports and fun activities, the GoPro is now also known for taking pretty epic and high quality photos. Many of the photos shared on Instagram are just stunning. From travel photos, to extreme sports, to animal close ups, the @GoPro Instagram account is a must follow. Check out some of our favorite images! - See more at: https://blog.ink361.com/2015/07/13-epic-gopro-shots-instagram/#sthash.lA2glqsh.dpuf", time: "39 MINUTES AGO"))
        timelines.append(Timeline(user: User(userName: "Alex", profileImage: "profile2"), postTitle: "沖縄の旅", postStartPlace: "那覇空港", postGoalPlace: "パイナップル村", postTopImage: UIImage(named: "image3")!, isLiked: true, likedCount: 9670, postComment: "@mishavladimirskiy – Electric Daisy Carnival in Las Vegas.", time: "46 MINUTES AGO"))
        timelines.append(Timeline(user: User(userName: "Daivid", profileImage: "profile3"), postTitle: "新婚熱海旅行", postStartPlace: "新宿", postGoalPlace: "熱海", postTopImage: UIImage(named: "image4")!, isLiked: false, likedCount: 3390, postComment: "@kirbychambliss – Red Bull Air Race.", time: "1 HOUR AGO"))
        timelines.append(Timeline(user: User(userName: "Arman", profileImage: "profile4"), postTitle: "", postStartPlace: "", postGoalPlace: "", postTopImage: UIImage(named: "image5")!, isLiked: true, likedCount: 12890, postComment: "@sf_photos_hawaii – Surfing on the North Shore of Oahu.", time: "2 HOURS AGO"))
        timelines.append(Timeline(user: User(userName: "Chris", profileImage: "profile5"), postTitle: "愛媛Trip", postStartPlace: "羽田空港", postGoalPlace: "松山", postTopImage: UIImage(named: "image6")!, isLiked: false, likedCount: 6289, postComment: "@travisburkephotography – The Wave, Arizona.", time: "2 HOURS AGO"))
        timelines.append(Timeline(user: User(userName: "Tigar", profileImage: "profile6"), postTitle: "", postStartPlace: "", postGoalPlace: "", postTopImage: UIImage(named: "image7")!, isLiked: false, likedCount: 33890, postComment: "lionwhisperersa – Kevin Richardson aka The Lion Whisperer.", time: "3 HOURS AGO"))
        timelines.append(Timeline(user: User(userName: "Dog", profileImage: "profile7"), postTitle: "東京都内デート", postStartPlace: "渋谷", postGoalPlace: "原宿", postTopImage: UIImage(named: "image8")!, isLiked: false, likedCount: 344, postComment: "@ericmathews – Summertime fun in the pool!", time: "5 HOURS AGO"))
        timelines.append(Timeline(user: User(userName: "Mark", profileImage: "profile8"), postTitle: "江ノ島日帰りり旅行", postStartPlace: "新宿", postGoalPlace: "江ノ島", postTopImage: UIImage(named: "image9")!, isLiked: true, likedCount: 11980, postComment: "@buraktuzer – Paragliding in Ölüdeniz, Turkey.", time: "5 HOURS AGO"))
        timelines.append(Timeline(user: User(userName: "Jack", profileImage: "profile9"), postTitle: "", postStartPlace: "", postGoalPlace: "", postTopImage: UIImage(named: "image10")!, isLiked: true, likedCount: 3390, postComment: "@seanruddiman – Secret beach in Mexico.", time: "7 HOURS AGO"))
        timelines.append(Timeline(user: User(userName: "Keen", profileImage: "profile10"), postTitle: "", postStartPlace: "", postGoalPlace: "", postTopImage: UIImage(named: "image11")!, isLiked: false, likedCount: 4110, postComment: "@ab_roo – Great White Shark in Australia.", time: "9 HOURS AGO"))
        timelines.append(Timeline(user: User(userName: "Jeff", profileImage: "profile11"), postTitle: "", postStartPlace: "", postGoalPlace: "", postTopImage: UIImage(named: "image12")!, isLiked: true, likedCount: 89167, postComment: " @shoayb_khattab – Camels running on a track in United Arab Emirates.", time: "3 DAYS AGO"))
        
        return timelines
    }
}
