//
//  ViewController.swift
//  Coffe Now App Snapkit
//
//  Created by Firdavs Boltayev on 06/07/22.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    private lazy var tableView = UITableView()

    //MARK: - VARIABLES
    
    private lazy var logoView: UIView = {
        let view = LogoAndTitle()
        view.backgroundColor = .clear
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tableView.register(TextFeildTableViewCell.self, forCellReuseIdentifier: "TextFeildTableViewCell")
        tableView.register(ButtonTableViewCell.self, forCellReuseIdentifier: "ButtonTableViewCell")
        tableView.register(GoogleAndFacebookTableViewCell.self, forCellReuseIdentifier: "GoogleAndFacebookTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.backgroundColor = .white
        tableView.showsVerticalScrollIndicator = false
        self.navigationController?.isNavigationBarHidden = true
        setUp()
    }
    
    func setUp() {
        
        view.addSubview(logoView)
        logoView.snp.makeConstraints { make in
            make.top.equalTo(52/812 * windowHeight)
            make.left.equalTo(20)
            make.height.equalTo(140/812 * windowHeight)
            make.width.equalTo(335/375 * windowWidth)
        }
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.top.equalTo(logoView.snp.bottom).inset(-25)
            make.leading.equalTo(view.snp.leading).inset(20)
            make.trailing.equalTo(view.snp.trailing).inset(20)
            make.bottom.equalToSuperview()
        }
    }
}

extension LoginViewController : UITableViewDataSource, UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            
            let cell = TextFeildTableViewCell(TextFeildModel(headerTitle: TextFieldType.email.headerTitle, placeHolder: TextFieldType.email.placeHolder), type: .email)
            cell.backgroundColor = .clear
            cell.selectionStyle = .none
            return cell
            
        } else if indexPath.row == 1 {
            
            let cell = TextFeildTableViewCell(TextFeildModel(headerTitle: TextFieldType.password.headerTitle, placeHolder: TextFieldType.password.placeHolder), type: .password)
            cell.backgroundColor = .clear
            cell.selectionStyle = .none
            return cell
            
        }  else if indexPath.row == 2 {
            
            let cell = ButtonTableViewCell(ButtonModel(buttonTitle: ButtonType.login.buttonTitle, questionTitle: ButtonType.login.questiontitle,additionalButtonTitle: ButtonType.login.additionalButtonTitle))
            cell.action = { click in
                UserDefaults.standard.bool(forKey: "Logn")
                let vc = tabBar()
                self.navigationController?.pushViewController(vc, animated: true)
            }
            cell.actionRegister = { click in
                let vc = RegisterViewController()
                self.navigationController?.pushViewController(vc, animated: true)
            }
            return cell
            
        } else if indexPath.row == 3 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "GoogleAndFacebookTableViewCell", for: indexPath) as! GoogleAndFacebookTableViewCell
            cell.backgroundColor = .clear
            cell.selectionStyle = .none
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.row {
            
        case 0 :
            return 105/812 * windowHeight
        case 1 :
            return 105/812 * windowHeight
        case 2 :
            return 156/812 * windowHeight
        case 3 :
            return 220
        default:
            return 0
        }
    }
}

