//
//  ForgotPasswordViewController.swift
//  Coffe Now App Snapkit
//
//  Created by Firdavs Boltayev on 21/07/22.
//

import UIKit

class ForgotPasswordViewController: UIViewController {
    
    //MARK: - VARIABLES
    private lazy var imageView: UIImageView = {
        let img = UIImageView()
        img.clipsToBounds = true
        img.image = UIImage(named: "img_ic")
        return img
    }()
    
    private lazy var lable: UILabel = {
        let text = UILabel()
        text.text = "FORGOT PASSWORD"
        text.frame = CGRect(x: 0, y: 0, width: 73/375 * windowWidth, height: 36/812 * windowHeight)
        text.backgroundColor = .clear
        text.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        text.font = UIFont.boldSystemFont(ofSize: 24)
        return text
    }()
    
    private lazy var sendMessageTitle: UILabel = {
      let label = UILabel()
        label.text = "We’ll send a password reset\nlink to your email."
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.textColor = UIColor(red: 0.639, green: 0.639, blue: 0.639, alpha: 1)
        return label
    }()
    
    private lazy var headerTitle: UILabel = {
        let text = UILabel()
        text.text = "Email"
        text.frame = CGRect(x: 0, y: 0, width: 39, height: 21)
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
        textFeild.placeholder = "exmpl@mail.com"
        textFeild.layer.borderWidth = 1
        textFeild.layer.borderColor = UIColor(hexString: "D9D9D9").cgColor
        return textFeild
    }()
    
    private lazy var button: UIButton = {
        var btn = UIButton(type: .system)
        btn.setTitle("Reset Password", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = UIColor(hexString: "321E0B")
        btn.layer.cornerRadius = 10
        btn.layer.borderWidth = 1
        btn.layer.borderColor = UIColor(hexString: "321E0B").cgColor
        
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUp()
    }
    
    func setUp() {
        
        view.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.width.height.equalTo(88)
            make.centerX.equalToSuperview()
            make.top.equalTo(52)
        }
        
        view.addSubview(lable)
        lable.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).inset(-16)
            make.height.equalTo(36)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(sendMessageTitle)
        sendMessageTitle.snp.makeConstraints { make in
            make.top.equalTo(lable.snp.bottom).inset(-6)
            make.centerX.equalToSuperview()
            make.width.equalTo(197)
        }
        
        view.addSubview(headerTitle)
        headerTitle.snp.makeConstraints { make in
            make.top.equalTo(sendMessageTitle.snp.bottom).inset(-20)
            make.leading.equalTo(20)
        }
        
        view.addSubview(textFeild)
        textFeild.snp.makeConstraints { make in
                make.top.equalTo(headerTitle.snp.bottom).inset(-6)
                make.leading.equalTo(20)
                make.trailing.equalTo(-20)
                make.height.equalTo(50)
        }
        
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.top.equalTo(textFeild.snp.bottom).inset(-44)
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.height.equalTo(54)
        }
    }
}
