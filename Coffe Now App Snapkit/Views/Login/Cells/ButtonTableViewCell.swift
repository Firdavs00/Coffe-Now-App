//
//  ButtonTableViewCell.swift
//  Coffe Now App Snapkit
//
//  Created by Firdavs Boltayev on 12/07/22.
//

import UIKit

class ButtonTableViewCell: UITableViewCell {
    
    private var model: ButtonModel!
    var type: ButtonType = .login
    
    /// Declaration of action block
    var action: ((Bool) -> Void)?
    var actionRegister: ((Bool) -> Void)?
    
    //MARK: Closures
    private lazy var button: UIButton = {
        var btn = UIButton(type: .system)
        btn.setTitle(type.buttonTitle, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 18,weight: .semibold)
        btn.backgroundColor = UIColor(hexString: "321E0B")
        btn.layer.cornerRadius = 10
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor(hexString: "321E0B").cgColor
        btn.addTarget(self, action: #selector(tapped(_ :)), for: .touchUpInside)
        
        return btn
    }()
    
    private lazy var view: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    private lazy var title: UILabel = {
        let label = UILabel()
        label.text =  type.questiontitle   //"Don’t have an account?"
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 14,weight: .medium)
        return label
    }()
    
    private lazy var openViewTitle: UIButton = {
        let btn = UIButton(type: .system)
    
        btn.setTitle(type.additionalButtonTitle, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 14,weight: .medium)
        btn.setTitleColor(UIColor(red: 1, green: 0.576, blue: 0.079, alpha: 1), for: .normal)
        btn.addTarget(self, action: #selector(registerTapped(_ :)), for: .touchUpInside)
        return btn
    }()
    
    private lazy var skipNowTitle: UILabel = {
        let label = UILabel()
        label.text =  type.questiontitle   //"Don’t have an account?"
        label.textColor = UIColor(hexString: "A3A3A3")
        label.font = UIFont.systemFont(ofSize: 18,weight: .medium)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    init(_ model: ButtonModel) {
        super.init(style: .default, reuseIdentifier: "ButtonTableViewCell")
        self.model = model
        self.initSetup()
        self.initConstraint()
        self.initData()
        contentView.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initSetup() {
        contentView.addSubview(button)
        contentView.addSubview(view)
        view.addSubview(title)
        view.addSubview(openViewTitle)
    }
    
    func initConstraint() {
        
       
        button.snp.makeConstraints { make in
            make.top.equalTo(24)
            make.leading.equalTo(0)
            make.trailing.equalTo(0)
            make.height.equalTo(54/812 * windowHeight)
        }
        
        
        if type.buttonTitle == "ADD ADDRESS" {
            contentView.addSubview(skipNowTitle)
            skipNowTitle.snp.makeConstraints { make in
                make.top.equalTo(button.snp.bottom).inset(19)
            }
            
        } else {
           
            view.snp.makeConstraints { make in
                make.top.equalTo(button.snp.bottom).inset(-19)
                make.height.equalTo(21/812 * windowHeight)
                make.leading.trailing.equalTo(0)
                make.centerX.equalTo(0)
            }
            
           
            title.snp.makeConstraints { make in
                make.top.equalTo(0)
                make.height.equalTo(21/812 * windowHeight)
                make.centerX.equalToSuperview().offset(-30)
            }
            
            
            openViewTitle.snp.makeConstraints { make in
                make.top.equalTo(button.snp.bottom).inset(-19)
                make.height.equalTo(21/812 * windowHeight)
                make.leading.equalTo(title.snp.trailing).inset(-5)
            }
        }
    }
    
    ///Implementation of block action
    @objc func tapped(_ sender: UIButton) {
        if let action = action {
            action(true)
        }
    }
    
    @objc func registerTapped(_ sender: UIButton) {
        if let action = self.actionRegister {
            action(true)
            print("jkl;")
        }
    }
    
    func initData() {
        
        self.button.setTitle(model.buttonTitle, for: .normal)
        self.title.text = model.questionTitle
        self.openViewTitle.setTitle(model.additionalButtonTitle, for: .normal)
    }
}
