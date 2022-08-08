//
//  VerticalTextFeildUITableViewCell.swift
//  Coffe Now App Snapkit
//
//  Created by Firdavs Boltayev on 21/07/22.
//

import UIKit

class VerticalTextFeildUITableViewCell: UITableViewCell {
    
    private var model: TextFeildModel!
    var type: TextFieldType = .zipCode
    
    private lazy var title1: UILabel = {
        let text = UILabel()
        text.text = type.headerTitle
        text.frame = CGRect(x: 0, y: 0, width: 39/375 * windowWidth, height: 21/812 * windowHeight)
        text.textColor = UIColor(hexString: "7D7D7D")
        text.backgroundColor = .clear
        text.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        return text
    }()
    
    private lazy var title2: UILabel = {
        let text = UILabel()
        text.text = type.headerTitle
        text.frame = CGRect(x: 0, y: 0, width: 39/375 * windowWidth, height: 21/812 * windowHeight)
        text.textColor = UIColor(hexString: "7D7D7D")
        text.backgroundColor = .clear
        text.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        return text
    }()
    
    private lazy var textFeild1: UITextField = {
        let textFeild = UITextField()
        textFeild.layer.backgroundColor = UIColor(hexString: "F5F5F5" ).cgColor
        textFeild.layer.cornerRadius = 8
        textFeild.textColor = .black
        textFeild.placeholder = type.placeHolder
        textFeild.layer.borderWidth = 1
        textFeild.layer.borderColor = UIColor(hexString: "D9D9D9").cgColor
        return textFeild
    }()
    
    private lazy var textFeild2: UITextField = {
        let textFeild = UITextField()
        textFeild.layer.backgroundColor = UIColor(hexString: "F5F5F5" ).cgColor
        textFeild.layer.cornerRadius = 8
        textFeild.textColor = .black
        textFeild.placeholder = type.placeHolder
        textFeild.layer.borderWidth = 1
        textFeild.layer.borderColor = UIColor(hexString: "D9D9D9").cgColor
        return textFeild
    }()
    
    private lazy var hideBtn: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "ic_hide"), for: .normal)
        button.backgroundColor = .orange
        return button
    }()
    
    
    init(_ model: TextFeildModel) {
        super.init(style: .default, reuseIdentifier: "VerticalTextFeildUITableViewCell")
        self.model = model
        setUp()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp() {
        contentView.addSubview(title1)
        title1.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top).inset(0)
            make.leading.equalTo(contentView.snp.leading)
            make.width.equalTo(65/375 * windowWidth)
        }
        
        contentView.addSubview(textFeild1)
        textFeild1.snp.makeConstraints { make in
            make.top.equalTo(title1.snp.bottom).inset(-6)
            make.leading.equalTo(contentView.snp.leading)
            make.height.equalTo(50/812 * windowHeight)
            make.width.equalTo(160/375 * windowWidth)
        }
        contentView.addSubview(title2)
        title2.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top).inset(0)
            make.leading.equalTo(textFeild1.snp.trailing).inset(-20)
            
        }
        
        contentView.addSubview(textFeild2)
        textFeild2.snp.makeConstraints { make in
            make.top.equalTo(title2.snp.bottom).inset(-6)
            make.leading.equalTo(textFeild1.snp.trailing).inset(-15)
            make.width.equalTo(160/375 * windowWidth)
            make.height.equalTo(50/812 * windowHeight)
        }
    }
    
    func initData() {
        self.title1.text = model.headerTitle
        self.title2.text = model.headerTitle
        self.textFeild1.placeholder = model.placeHolder
        self.textFeild2.placeholder = model.placeHolder
    }
    
}
