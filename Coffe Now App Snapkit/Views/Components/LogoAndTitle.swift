//
//  LogoAndTitle.swift
//  Coffe Now App Snapkit
//
//  Created by Firdavs Boltayev on 27/07/22.
//

import Foundation
import UIKit
import SnapKit

class LogoAndTitle: UIView {
    
    private lazy var iconImages: UIImageView = {
        let img = UIImageView()
        img.clipsToBounds = true
        img.image = UIImage(named: "img_ic")
        return img
    }()
    
    private lazy var titleLabel: UILabel = {
        let text = UILabel()
        text.text = "LOGIN"
        text.frame = CGRect(x: 0, y: 0, width: 73/375 * windowWidth, height: 36/812 * windowHeight)
        text.backgroundColor = .white
        text.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        text.font = UIFont.boldSystemFont(ofSize: 24)
        
        return text
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.initSetup()
        self.initConstraint()
        
    }
    
    func initSetup() {

        self.addSubview(iconImages)
        self.addSubview(titleLabel)

    }
    
    func initConstraint() {
        
        iconImages.snp.makeConstraints { make in
            make.width.height.equalTo(88/812 * windowHeight)
            make.centerX.equalToSuperview()
            make.top.equalTo(0)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(iconImages.snp.bottom).inset(-16)
            make.centerX.equalToSuperview()
        }
    }
}
