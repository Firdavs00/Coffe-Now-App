//
//  GoogleAndFacebookTableViewCell.swift
//  Coffe Now App Snapkit
//
//  Created by Firdavs Boltayev on 18/07/22.
//

import UIKit

class GoogleAndFacebookTableViewCell: UITableViewCell {
    
    private lazy var leftDivider: UIView = {
       let view = UIView()
        view.backgroundColor = UIColor(hexString: "D2D2D2")
        return view
    }()
    private lazy var title: UILabel = {
        let label = UILabel()
        label.text = "OR"
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        label.textColor = UIColor(hexString: "7D7D7D")
        return label
    }()
    private lazy var rightDivider: UIView = {
       let view = UIView()
        view.backgroundColor = UIColor(hexString: "D2D2D2")
        return view
    }()
    
    private lazy var imageGoogleBackView: UIView = {
       let view = UIView()
        view.backgroundColor = .white
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor(hexString: "EEEEEE").cgColor
        view.layer.cornerRadius = 20
        view.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1).cgColor
        view.layer.shadowRadius = 30
        view.layer.shadowOffset = CGSize(width: 0, height: 2)
        return view
    }()
    
    private lazy var imageGoogle: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "image1")
        return img
    }()
    
    private lazy var imageFacebookBackView: UIView = {
       let view = UIView()
        view.backgroundColor = .white
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor(hexString: "EEEEEE").cgColor
        view.layer.cornerRadius = 20
        view.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1).cgColor
        view.layer.shadowRadius = 30
        view.layer.shadowOffset = CGSize(width: 0, height: 2)
        return view
    }()
    
    private lazy var imageFacebook: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "image2")
        return img
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        contentView.backgroundColor = .red
        setUp()
        
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp() {
        
        contentView.addSubview(leftDivider)
        leftDivider.snp.makeConstraints { make in
            make.top.equalTo(13.5)
            make.height.equalTo(1/812 * windowHeight)
            make.width.equalTo(135/375 * windowWidth)
        }
        
        contentView.addSubview(title)
        title.snp.makeConstraints { make in
            make.top.equalTo(2)
            make.height.equalTo(27/812 * windowHeight)
            make.width.equalTo(26/375 * windowWidth)
            make.leading.equalTo(leftDivider.snp.trailing).inset(-20)
        }
        
        contentView.addSubview(rightDivider)
        rightDivider.snp.makeConstraints { make in
            make.top.equalTo(13.5)
            make.height.equalTo(1/812 * windowHeight)
            make.leading.equalTo(title.snp.trailing).inset(-20)
            make.width.equalTo(135/375 * windowWidth)
        }
        
        contentView.addSubview(imageGoogleBackView)
        imageGoogleBackView.snp.makeConstraints { make in
            make.top.equalTo(title.snp.bottom).inset(-33)
            make.height.width.equalTo(80/812 * windowHeight)
            make.leading.equalTo(60)
        }
        
        imageGoogleBackView.addSubview(imageGoogle)
        imageGoogle.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.height.equalTo(42/812 * windowHeight)
        }

        contentView.addSubview(imageFacebookBackView)
        imageFacebookBackView.snp.makeConstraints { make in
            make.top.equalTo(title.snp.bottom).inset(-33)
            make.trailing.equalTo(-60)
            make.height.width.equalTo(80/812 * windowHeight)
        }
        
        imageFacebookBackView.addSubview(imageFacebook)
        imageFacebook.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.height.equalTo(42/812 * windowHeight)
        }
    }
}
