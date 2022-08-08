//
//  NavigationBarTableViewCell.swift
//  Coffe Now App Snapkit
//
//  Created by Firdavs Boltayev on 21/07/22.
//

import UIKit

class NavigationBarTableViewCell: UITableViewCell {
    
    private lazy var userNameTitle: UILabel = {
        let label = UILabel()
        label.text = "Hello, John!"
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        label.textColor = UIColor(hexString: "321D0B")
        label.numberOfLines = 0
        return label
    }()

    private lazy var pinImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "Location")
        return img
    }()
    
    private lazy var countryNameTitle: UILabel = {
        let label = UILabel()
        label.text = "Jakarta, Indonesia"
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = UIColor(hexString: "FF9314")
        
        return label
    }()
    
    private lazy var imgBackView1: UIView = {
      let view = UIView()
        view.backgroundColor = UIColor(hexString: "321D0B")
        view.layer.cornerRadius = 6
        return view
    }()
    
    private lazy var ticketImg: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "Ticket")
        return img
    }()
    
    private lazy var imgBackView2: UIView = {
      let view = UIView()
        view.backgroundColor = UIColor(hexString: "321D0B")
        view.layer.cornerRadius = 6
        return view
    }()
    
    private lazy var heartImg: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "Heart")
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
        
        contentView.addSubview(userNameTitle)
        userNameTitle.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalTo(20)
            make.height.equalTo(27/812 * windowHeight)
        }
        
        contentView.addSubview(pinImage)
        pinImage.snp.makeConstraints { make in
            make.top.equalTo(userNameTitle.snp.bottom).inset(-3.75)
            make.leading.equalTo(22.62)
            make.height.equalTo(10.5/812 * windowHeight)
            make.width.equalTo(10.5/375 * windowWidth)
        }
        
        contentView.addSubview(countryNameTitle)
        countryNameTitle.snp.makeConstraints { make in
            make.top.equalTo(userNameTitle.snp.bottom).inset(-2)
            make.leading.equalTo(pinImage.snp.trailing).inset(-2)
            make.height.equalTo(14/812 * windowHeight)
        }
        
        contentView.addSubview(imgBackView1)
        imgBackView1.snp.makeConstraints { make in
            make.top.equalTo(5)
            make.height.width.equalTo(28/812 * windowHeight)
            make.trailing.equalTo(-60)
        }
        
        imgBackView1.addSubview(ticketImg)
        ticketImg.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.height.equalTo(14/812 * windowHeight)
            make.width.equalTo(15/375 * windowWidth)
        }
        
        contentView.addSubview(imgBackView2)
        imgBackView2.snp.makeConstraints { make in
            make.top.equalTo(5)
            make.height.width.equalTo(28/812 * windowHeight)
            make.trailing.equalTo(-20)
            
        }
        
        imgBackView2.addSubview(heartImg)
        heartImg.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.height.equalTo(14/812 * windowHeight)
            make.width.equalTo(15/375 * windowWidth)
        }
    }

}
