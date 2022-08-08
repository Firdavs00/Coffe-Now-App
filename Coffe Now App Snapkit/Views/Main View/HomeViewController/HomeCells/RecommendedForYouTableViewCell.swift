//
//  RecommendedForYouTableViewCell.swift
//  Coffe Now App Snapkit
//
//  Created by Firdavs Boltayev on 21/07/22.
//

import UIKit

class RecommendedForYouTableViewCell: UITableViewCell {

    private lazy var recommendedTitle: UILabel = {
       let label = UILabel()
        label.text = "Recommended for you"
        label.font = UIFont.systemFont(ofSize: 18/812 * windowHeight, weight: .regular)
        label.textColor = UIColor(hexString: "321D0B")
        return label
    }()
    
    var collectionView: UICollectionView = {
        let flow = UICollectionViewFlowLayout()
        flow.minimumLineSpacing = 21
        flow.scrollDirection = .horizontal
        let mainScreen = UIScreen.main.bounds
        flow.itemSize = CGSize(width: 157/375 * windowWidth, height: 225/812 * windowHeight)
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

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        collectionView.register(RecommendedCollectionViewCell.self, forCellWithReuseIdentifier: "RecommendedCollectionViewCell")
        setUp()
        collectionView.dataSource = self
        collectionView.backgroundColor = .white
        collectionView.showsHorizontalScrollIndicator = false

    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp() {
        
        contentView.addSubview(recommendedTitle)
        recommendedTitle.snp.makeConstraints { make in
            make.top.equalTo(0)
            make.leading.equalTo(20)
            make.height.equalTo(22/812 * windowHeight)
        }
        
        contentView.addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(recommendedTitle.snp.bottom).inset(-6)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(225/812 * windowHeight)
        }
        
    }
}

extension RecommendedForYouTableViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecommendedCollectionViewCell", for: indexPath) as! RecommendedCollectionViewCell
        cell.backgroundColor = .clear
        
//        cell.action = { click in
//            let vc = ShopDetailsViewController()
//            self.navigationController?.pushViewController(vc, animated: true)
//
//        }
        return cell
      
    }
}
