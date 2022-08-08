//
//  AdvertisingTableViewCell.swift
//  Coffe Now App Snapkit
//
//  Created by Firdavs Boltayev on 21/07/22.
//

import UIKit

class AdvertisingTableViewCell: UITableViewCell {
    
    private lazy var advertisingImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "Banner")
        img.frame = CGRect(x: 0, y: 0, width: 335/375 * windowWidth, height: 150/812 * windowWidth)
        img.layer.cornerRadius = 10
        return img
        
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
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp() {
        
        contentView.addSubview(advertisingImage)
        advertisingImage.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
