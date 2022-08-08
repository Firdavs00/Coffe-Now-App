//
//  BaseViewController.swift
//  Coffe Now App Snapkit
//
//  Created by Firdavs Boltayev on 27/07/22.
//

import UIKit
import SnapKit

class BaseViewController: UIViewController {
    
   
   var viewIndex: Int = 1

    private lazy var logoView: UIView = {
        let view = LogoAndTitle()
        view.backgroundColor = .clear
        return view
    }()
    
    private lazy var tabBarView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hexString: "321E0B")
        view.layer.cornerRadius = 18
        return view
    }()
    
    private lazy var homeBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "HomeTap"), for: .normal)
        btn.addTarget(self, action: #selector(tapBtn1(_ :)), for: .touchUpInside)
        return btn
    }()
    
    private lazy var searchBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named:"Search"), for: .normal)
        btn.addTarget(self, action: #selector(tapBtn2(_ :)), for: .touchUpInside)
        return btn
    }()
    
    private lazy var documentBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named:"Document"), for: .normal)
        btn.addTarget(self, action: #selector(tapBtn3(_ :)), for: .touchUpInside)
        return btn
    }()

    private lazy var profileBtn: UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named:"Profile"), for: .normal)
        btn.addTarget(self, action: #selector(tapBtn4(_ :)), for: .touchUpInside)
        return btn
    }()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.navigationItem.hidesBackButton = true

        setUp()
        
    }
    

    func setUp() {
        
//        switch viewIndex {
//        case 1:
//            UINavigationController(rootViewController: HomeViewController())
//        case 2:
//            view.addSubview(logoView)
//
//        case 3:
//            DocumentViewController()
//        case 4:
//            ProfileViewController()
//
//        default:
//            view.backgroundColor = .blue
//        }
        
        
        view.addSubview(tabBarView)
        tabBarView.snp.makeConstraints { make in
            make.leading.equalTo(20)
            make.trailing.equalTo(-20)
            make.height.equalTo(68/812 * windowHeight)
            make.bottom.equalTo(-20)
        }
        
        tabBarView.addSubview(homeBtn)
        homeBtn.snp.makeConstraints { make in
            make.leading.equalTo(28)
            make.centerY.equalToSuperview()
            make.height.equalTo(20/812 * windowHeight)
            make.width.equalTo(19/375 * windowWidth)
        }
        
        tabBarView.addSubview(searchBtn)
        searchBtn.snp.makeConstraints { make in
            make.leading.equalTo(homeBtn.snp.trailing).inset(-67)
            make.centerY.equalToSuperview()
            make.width.height.equalTo(24/812 * windowHeight)
        }
        
        tabBarView.addSubview(documentBtn)
        documentBtn.snp.makeConstraints { make in
            make.leading.equalTo(searchBtn.snp.trailing).inset(-69)
            make.centerY.equalToSuperview()
            make.width.height.equalTo(24/812 * windowHeight)
        }
        
        tabBarView.addSubview(profileBtn)
        profileBtn.snp.makeConstraints { make in
            make.leading.equalTo(documentBtn.snp.trailing).inset(-62)
            make.centerY.equalToSuperview()
            make.width.height.equalTo(24/812 * windowHeight)
        }
    }
    
    @objc func tapBtn1(_ sender: UIButton) {
        viewIndex = 1
        homeBtn.setImage(UIImage(named:"HomeTap" ), for: .normal)
        searchBtn.setImage(UIImage(named:"Search"), for: .normal)
        documentBtn.setImage(UIImage(named:"Document"), for: .normal)
        profileBtn.setImage(UIImage(named:"Profile"), for: .normal)

        print("tapBtn1 - \(viewIndex)")
    }
    
    @objc func tapBtn2(_ sender: UIButton) {
        viewIndex = 2
        searchBtn.setImage(UIImage(named: "SearchTap" ), for: .normal)
        homeBtn.setImage(UIImage(named:"Home" ), for: .normal)
        documentBtn.setImage(UIImage(named:"Document"), for: .normal)
        profileBtn.setImage(UIImage(named:"Profile"), for: .normal)

        print("tapBtn2 - \(viewIndex)")
    }
    
    @objc func tapBtn3(_ sender: UIButton) {
        viewIndex = 3
        documentBtn.setImage(UIImage(named: "DocumentTap" ), for: .normal)
        homeBtn.setImage(UIImage(named:"Home" ), for: .normal)
        searchBtn.setImage(UIImage(named: "Search" ), for: .normal)
        profileBtn.setImage(UIImage(named:"Profile"), for: .normal)
        print("tapBtn3 - \(viewIndex)")
    }
    
    @objc func tapBtn4(_ sender: UIButton) {
        viewIndex = 4
        profileBtn.setImage(UIImage(named: "ProfileTap" ), for: .normal)
        homeBtn.setImage(UIImage(named:"Home" ), for: .normal)
        searchBtn.setImage(UIImage(named: "Search" ), for: .normal)
        documentBtn.setImage(UIImage(named: "Document" ), for: .normal)

        print("tapBtn2 - \(viewIndex)")
    }
    
    
}
