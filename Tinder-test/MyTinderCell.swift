//
//  MyTinderCell.swift
//  Tinder-test
//
//  Created by OuSS on 8/16/17.
//  Copyright © 2017 OuSS. All rights reserved.
//

import UIKit

class MyTinderCell: SPTinderViewCell {
    let titleLabel: UILabel = UILabel(frame: CGRect.zero)
    let subLabel: UILabel = UILabel(frame: CGRect.zero)
    let imageView: UIImageView = UIImageView(frame: CGRect.zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    required init(reuseIdentifier: String) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.frame = CGRect(origin: CGPoint.zero, size: CGSize(width: 300, height: 450))
        self.backgroundColor = UIColor.white
        titleLabel.frame = CGRect(x: 10, y: self.frame.height - 60, width: self.frame.width, height: 40)
        subLabel.frame = CGRect(x: 10, y: self.frame.height - 30, width: self.frame.width, height: 20)
        imageView.frame = CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height - 60)
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        titleLabel.textAlignment = .left
        titleLabel.backgroundColor = UIColor.white
        subLabel.textAlignment = .left
        subLabel.backgroundColor = UIColor.white
        subLabel.font = subLabel.font.withSize(12)
        self.addSubview(imageView)
        self.addSubview(titleLabel)
        self.addSubview(subLabel)
        self.cornerRadius = 6.0
    }
}
