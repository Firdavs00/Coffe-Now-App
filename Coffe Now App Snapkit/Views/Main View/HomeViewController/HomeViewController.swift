//
//  HomeViewController.swift
//  Coffe Now App Snapkit
//
//  Created by Firdavs Boltayev on 21/07/22.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    private lazy var tableView = UITableView()
        
    private lazy var navBarView: UIView = {
       let view =  UIView()
        view.backgroundColor = .white
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(NavigationBarTableViewCell.self, forCellReuseIdentifier: "NavigationBarTableViewCell")
        tableView.register(AdvertisingTableViewCell.self, forCellReuseIdentifier: "AdvertisingTableViewCell")
        tableView.register(RecommendedForYouTableViewCell.self, forCellReuseIdentifier: "RecommendedForYouTableViewCell")
        tableView.register(PopularBrandTableViewCell.self, forCellReuseIdentifier: "PopularBrandTableViewCell")
        view.backgroundColor = .white
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        self.navigationItem.hidesBackButton = true
//        self.navigationController?.isNavigationBarHidden = true
        setUp()
    }
    
    func setUp() {
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "NavigationBarTableViewCell", for: indexPath) as! NavigationBarTableViewCell
            cell.selectionStyle = .none
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AdvertisingTableViewCell", for: indexPath) as! AdvertisingTableViewCell
            cell.selectionStyle = .none
            return cell
        } else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RecommendedForYouTableViewCell", for: indexPath) as! RecommendedForYouTableViewCell
//            cell.selectionStyle = .none
            return cell
        } else if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PopularBrandTableViewCell", for: indexPath) as! PopularBrandTableViewCell
//            cell.selectionStyle = .none
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 43/812 * windowHeight
        case 1:
            return 180/812 * windowHeight
        case 2:
            return 271/812 * windowHeight
        case 3:
            return 114/812 * windowHeight
        default:
            return 0
        }
    }
    
}
