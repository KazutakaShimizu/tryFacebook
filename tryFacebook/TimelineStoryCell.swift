//
//  TimelineStoryCell.swift
//  tryFacebook
//
//  Created by 清水一貴 on 2017/04/01.
//  Copyright © 2017年 清水一貴. All rights reserved.
//

import UIKit

class TimelineStoryCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    @IBOutlet var collectionView: UICollectionView!
    var stories: [Story]!
//    var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        let nib = UINib(nibName: "StoryCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "Story")
        let nib2 = UINib(nibName: "FirstStoryCell", bundle: nil)
        collectionView.register(nib2, forCellWithReuseIdentifier: "FirstStory")
        let nib3 = UINib(nibName: "SecondStoryCell", bundle: nil)
        collectionView.register(nib3, forCellWithReuseIdentifier: "SecondStory")
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.row {
        case 0:
            let cell : FirstStoryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "FirstStory", for: indexPath) as! FirstStoryCell
            return cell
        case 1:
            let cell : SecondStoryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "SecondStory", for: indexPath) as! SecondStoryCell
            return cell
        default:
            let cell : StoryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Story", for: indexPath) as! StoryCell
            cell.story = stories[indexPath.row - 2]
            return cell
        }
    
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stories.count + 2
    }

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch indexPath.row {
        case 0:
            return CGSize(width: 66, height: 72)
        case 1:
            return CGSize(width: 1, height: 72)
        default:
            return CGSize(width: 55, height: 72)
        }
    }
    
}
