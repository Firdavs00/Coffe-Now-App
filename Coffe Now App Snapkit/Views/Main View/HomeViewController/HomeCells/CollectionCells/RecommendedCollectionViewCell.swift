//
//  RecommendedCollectionViewCell.swift
//  Coffe Now App Snapkit
//
//  Created by Firdavs Boltayev on 21/07/22.
//

import UIKit

class RecommendedCollectionViewCell: UICollectionViewCell {
    
    
    var action: ((Bool) -> Void)?
    
    private lazy var cellView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 10
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1).cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 3)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 10.0
        self.layer.masksToBounds = false
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.black.cgColor
        return view
    }()
    
    private lazy var viewBtn: UIButton = {
        let btn = UIButton()
        btn.addTarget(self, action: #selector(tapped(_ :)), for: .touchUpInside)
        
        return btn
    }()
    
    private lazy var coffeImg: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "Image1")
        img.layer.masksToBounds = true
        img.layer.cornerRadius = 10
        return img
    }()
    
    private lazy var nameTitle: UILabel = {
        let label = UILabel()
        label.text = "Macchiato Short"
        label.textColor = UIColor(red: 0.175, green: 0.175, blue: 0.175, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 12/812 * windowHeight, weight: .medium)
        return label
    }()
    
    private lazy var priceTitle: UILabel = {
        let lable = UILabel()
        lable.text = "$ 5.00"
        lable.font = UIFont.systemFont(ofSize: 18/812 * windowHeight, weight: .regular)
        lable.textColor = UIColor(red: 1, green: 0.576, blue: 0.079, alpha: 1)
        return lable
    }()
    
    private lazy var bascetImg: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "Frame 3")
        return img
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .white
        contentView.clipsToBounds = true
        initSetup()
        initConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initSetup() {
        
        contentView.addSubview(cellView)
        cellView.addSubview(coffeImg)
        cellView.addSubview(nameTitle)
        cellView.addSubview(priceTitle)
        cellView.addSubview(bascetImg)
        cellView.addSubview(viewBtn)
    }
    
    func initConstraint() {
        
        contentView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalTo(20)
            make.height.equalTo(225/812 * windowHeight)
            make.width.equalTo(157/375 * windowWidth)
        }
        
        cellView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        coffeImg.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.width.height.equalTo(157/812 * windowHeight)
            make.width.equalTo(157/375 * windowWidth)
        }
        
        nameTitle.snp.makeConstraints { make in
            make.top.equalTo(coffeImg.snp.bottom).inset(-8)
            make.leading.equalTo(10)
            make.height.equalTo(18/812 * windowHeight)
        }
        
        priceTitle.snp.makeConstraints { make in
            make.top.equalTo(nameTitle.snp.bottom).inset(-8)
            make.leading.equalTo(10)
            make.height.equalTo(22/812 * windowHeight)
        }
        
        bascetImg.snp.makeConstraints { make in
            make.top.equalTo(nameTitle.snp.bottom).inset(-6)
            make.trailing.equalTo(-10)
            make.height.width.equalTo(26/812 * windowHeight)
        }
        
        viewBtn.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
    
    @objc func tapped(_ sender: UIButton) {
        
        //        let vc = ShopDetailsViewController(nibName: "ShopDetailsViewController", bundle: nil)
        //        self.navigationController?.pushViewController(vc, animated: true)
        //        if let action = action {
        //            action(true)
        //        }
        print("12345")
    }
}

