//
//  RegisterViewController.swift
//  Coffe Now App Snapkit
//
//  Created by Firdavs Boltayev on 19/07/22.
//

import UIKit

class RegisterViewController: UIViewController {

    private lazy var tableView = UITableView()
    //MARK: - VARIABLES
    private lazy var imageView: UIImageView = {
        let img = UIImageView()
        img.clipsToBounds = true
        img.image = UIImage(named: "img_ic")
        return img
    }()

    private lazy var lable: UILabel = {
        let text = UILabel()
        text.text = "REGISTER"
        text.frame = CGRect(x: 0, y: 0, width: 73/375 * windowWidth, height: 36/812 * windowHeight)
        text.backgroundColor = .white
        text.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        text.font = UIFont.boldSystemFont(ofSize: 24)

        return text
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        tableView.register(TextFeildTableViewCell.self, forCellReuseIdentifier: "TextFeildTableViewCell")
        tableView.register(ButtonTableViewCell.self, forCellReuseIdentifier: "ButtonTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.backgroundColor = .white
        self.navigationItem.hidesBackButton = true
        setUp()
    }
    func setUp() {
    view.addSubview(imageView)
    imageView.snp.makeConstraints { make in
        make.width.height.equalTo(88/812 * windowHeight)
        make.centerX.equalToSuperview()
        make.top.equalTo(52)
    }

    view.addSubview(lable)
    lable.snp.makeConstraints { make in
        make.top.equalTo(imageView.snp.bottom).inset(-16)
        make.centerX.equalToSuperview()
    }
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.top.equalTo(lable.snp.bottom).inset(-32)
            make.leading.equalTo(view.snp.leading).inset(20)
            make.trailing.equalTo(view.snp.trailing).inset(20)
            make.bottom.equalToSuperview()
        }
    }
}

extension RegisterViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
     if indexPath.row == 0 {
            
            let cell = TextFeildTableViewCell(TextFeildModel(headerTitle: TextFieldType.fullname.headerTitle, placeHolder: TextFieldType.fullname.placeHolder), type: .fullname)
            cell.backgroundColor = .clear
            cell.selectionStyle = .none
            return cell
            
        } else if indexPath.row == 1 {
            
            let cell = TextFeildTableViewCell(TextFeildModel(headerTitle: TextFieldType.email.headerTitle, placeHolder: TextFieldType.email.placeHolder), type: .email)
            cell.backgroundColor = .clear
            cell.selectionStyle = .none
            return cell
            
        } else if indexPath.row == 2 {
            let cell = TextFeildTableViewCell(TextFeildModel(headerTitle: TextFieldType.phone_number.headerTitle, placeHolder: TextFieldType.phone_number.placeHolder), type: .phone_number)
            cell.backgroundColor = .clear
            cell.selectionStyle = .none
            return cell
            
        } else if indexPath.row == 3 {
            let cell = TextFeildTableViewCell(TextFeildModel(headerTitle: TextFieldType.password.headerTitle, placeHolder: TextFieldType.password.placeHolder), type: .password)
            cell.backgroundColor = .clear
            cell.selectionStyle = .none
            return cell
            
        } else if indexPath.row == 4 {
            let cell = ButtonTableViewCell(ButtonModel(buttonTitle: ButtonType.register.buttonTitle, questionTitle: ButtonType.register.questiontitle, additionalButtonTitle: ButtonType.register.additionalButtonTitle))
            cell.action = { click in
                let vc = AddressSetupViewController()
                self.navigationController?.pushViewController(vc, animated: true)
            }
            cell.actionRegister = { click in
                let vc = AddressSetupViewController()
                self.navigationController?.pushViewController(vc, animated: true)

//                self.navigationController?.popViewController(animated: true)
            }
            return cell
        }
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        switch indexPath.row{

        case 0 :
            return 105/812 * windowHeight
        case 1 :
            return 105/812 * windowHeight
        case 2 :
            return 105/812 * windowHeight
        case 3 :
            return 105/812 * windowHeight
        case 4 :
            return 94/812 * windowHeight
        default:
            return 0
        }
    }
}
