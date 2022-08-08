//
//  PopularBrandTableViewCell.swift
//  Coffe Now App Snapkit
//
//  Created by Firdavs Boltayev on 21/07/22.
//

import UIKit

class PopularBrandTableViewCell: UITableViewCell {
    
    private lazy var popularBrandTitle: UILabel = {
       let label = UILabel()
        label.text = "Popular brand"
        label.font = UIFont.systemFont(ofSize: 18/812 * windowHeight, weight: .regular)
        label.textColor =  UIColor(red: 0.175, green: 0.175, blue: 0.175, alpha: 1)
        return label
    }()

    var collectionView: UICollectionView = {
        let flow = UICollectionViewFlowLayout()
        flow.minimumLineSpacing = 20
        flow.scrollDirection = .horizontal
        let mainScreen = UIScreen.main.bounds
        flow.itemSize = CGSize(width: 80/375 * windowWidth, height: 80/812 * windowHeight)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flow)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .white
        return collectionView
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    override func layoutSubviews() {
        super.layoutSubviews()
        setUp()
        collectionView.register(PopularCoffeCollectionViewCell.self, forCellWithReuseIdentifier: "PopularCoffeCollectionViewCell")
        collectionView.dataSource = self
        collectionView.showsHorizontalScrollIndicator = false
    }
    
    func setUp() {
        
        contentView.addSubview(popularBrandTitle)
        popularBrandTitle.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalTo(20)
            make.height.equalTo(22/812 * windowHeight)
        }
        
        contentView.addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(popularBrandTitle.snp.bottom).inset(-6)
            make.leading.trailing.equalToSuperview()
            make.height.width.equalTo(80/812 * windowHeight)
            
        }
    }
}

extension PopularBrandTableViewCell: UICollectionViewDataSource {
 
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PopularCoffeCollectionViewCell", for: indexPath) as! PopularCoffeCollectionViewCell
        return cell
    }
}
