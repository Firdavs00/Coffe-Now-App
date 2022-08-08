//
//  PopularCoffeCollectionViewCell.swift
//  Coffe Now App Snapkit
//
//  Created by Firdavs Boltayev on 21/07/22.
//

import UIKit

class PopularCoffeCollectionViewCell: UICollectionViewCell {
    
    private lazy var popularBrandImgBackView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 20
//        view.layer.borderWidth = 1
//        view.layer.borderColor = UIColor.black.cgColor
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1).cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 3)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 10.0
        self.layer.masksToBounds = false

        return view
    }()
    
    private lazy var logoImg: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "Logo1")
        return img
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 20
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp() {
        
        contentView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalTo(20)
            make.height.width.equalTo(80/812 * windowHeight)
        }
        
        contentView.addSubview(popularBrandImgBackView)
        popularBrandImgBackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        popularBrandImgBackView.addSubview(logoImg)
        logoImg.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
    
}
