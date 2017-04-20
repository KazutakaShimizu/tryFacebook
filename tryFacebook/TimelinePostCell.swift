//
//  TimelinePostCell.swift
//  tryFacebook
//
//  Created by 清水一貴 on 2017/03/20.
//  Copyright © 2017年 清水一貴. All rights reserved.
//

import UIKit

class TimelinePostCell: UITableViewCell {

    @IBOutlet var buttonArea: UIView!
    var liveButton: UIButton! = {
        let lb = UIButton(frame: CGRect(x: 0, y: 0, width: 65, height: 20))
        lb.setBackgroundImage(UIImage(named: "liveIcon"), for: .normal)
        return lb
    }()
    var pictureButton: UIButton! = {
        let pb = UIButton(frame: CGRect(x: 0, y: 0, width: 61, height: 20))
        pb.setBackgroundImage(UIImage(named: "pictureIcon"), for: .normal)
        return pb
    }()
    var checkinButton: UIButton! = {
        let cb = UIButton(frame: CGRect(x: 0, y: 0, width: 106, height: 20))
        cb.setBackgroundImage(UIImage(named: "checkinIcon"), for: .normal)
        return cb
    }()
    var buttonAreaBorder: UIView! = {
        let bab = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 0.5))
        bab.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        return bab
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        customaization()
    }
    @IBAction func hoge(_ sender: Any) {
        customaization()
    }


    private func customaization(){
//        ボタンの調整
        let iconAreaWidth = UIScreen.main.bounds.width/3
        let buttonY = (buttonArea.frame.size.height - 20)/2
        let liveButtonX = (iconAreaWidth - liveButton.frame.size.width)/2
        liveButton.frame.origin = CGPoint(x: liveButtonX, y: buttonY)
        let pictureButtonX = (iconAreaWidth - pictureButton.frame.size.width)/2 + iconAreaWidth
        pictureButton.frame.origin = CGPoint(x: pictureButtonX, y: buttonY)
        let checkinButtonX = (iconAreaWidth - checkinButton.frame.size.width)/2 + iconAreaWidth*2
        checkinButton.frame.origin = CGPoint(x: checkinButtonX, y: buttonY)
        buttonArea.addSubview(liveButton)
        buttonArea.addSubview(pictureButton)
        buttonArea.addSubview(checkinButton)
        
        buttonAreaBorder.frame.origin.y = buttonArea.frame.origin.y
        self.addSubview(buttonAreaBorder)
        let buttonBorder1 = UIView(frame: CGRect(x: iconAreaWidth, y: 5, width: 1, height: buttonArea.frame.size.height - 10))
        buttonBorder1.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        let buttonBorder2 = UIView(frame: CGRect(x: iconAreaWidth * 2, y: 5, width: 1, height: buttonArea.frame.size.height - 10))
        buttonBorder2.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        buttonArea.addSubview(buttonBorder1)
        buttonArea.addSubview(buttonBorder2)
        
    }
    

    
}
