//
//  TextFeildTableViewCell.swift
//  Coffe Now App Snapkit
//
//  Created by Firdavs Boltayev on 07/07/22.
//

import UIKit

class TextFeildTableViewCell: UITableViewCell {
    private var model: TextFeildModel!
    var type: TextFieldType = .email
    
    private lazy var title: UILabel = {
        let text = UILabel()
        text.text = type.headerTitle
        text.frame = CGRect(x: 0, y: 0, width: 39/375 * windowWidth, height: 21/812 * windowHeight)
        text.textColor = UIColor(hexString: "7D7D7D")
        text.backgroundColor = .clear
        text.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        return text
    }()
    
    private lazy var textFeild: UITextField = {
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
        button.backgroundColor = .clear
        return button
    }()
    
    private lazy var forgotPasswordBtn: UIButton = {
       let btn = UIButton(type: .system)
        btn.setTitle("Forgot Password ?", for: .normal)
        btn.setTitleColor(UIColor(hexString: "FF9314"), for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 12,weight: .medium)
        btn.addTarget(self, action: #selector(tapped(_ :)), for: .touchUpInside)

        return btn
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    init(_ model: TextFeildModel, type: TextFieldType) {
        super.init(style: .default, reuseIdentifier: "TextFeildTableViewCell")
        self.model = model
        self.type = type
        self.setUp()
        self.initData()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp() {
        
        contentView.addSubview(title)
        title.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top).inset(0)
            make.leading.equalTo(contentView.snp.leading)
        }
        
        contentView.addSubview(textFeild)
        textFeild.snp.makeConstraints { make in
            make.top.equalTo(title.snp.bottom).inset(-6)
            make.leading.equalTo(contentView.snp.leading)
            make.trailing.equalTo(contentView.snp.trailing)
            make.height.equalTo(50/812 * windowHeight)
        }
        
        if type.isPassword {
            
            textFeild.addSubview(hideBtn)
            hideBtn.snp.makeConstraints { make in
                make.centerY.equalToSuperview()
                make.trailing.equalTo(textFeild.snp.trailing).inset(22)
                make.height.width.equalTo(16/812 * windowHeight)
            }
        contentView.addSubview(forgotPasswordBtn)
        forgotPasswordBtn.snp.makeConstraints { make in
            make.top.equalTo(textFeild.snp.bottom).inset(-9)
            make.trailing.equalTo(0)
            make.height.equalTo(18/812 * windowHeight)
                }
        }
    }
    
    func initData() {
        self.title.text = model.headerTitle
        self.textFeild.placeholder = model.placeHolder
    }
    
    ///Implementation of block action
    @objc func tapped(_ sender: UIButton) {
        print("BTN")
    }
}
