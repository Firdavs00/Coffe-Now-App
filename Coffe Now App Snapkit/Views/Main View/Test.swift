//
//  Test.swift
//  Coffe Now App Snapkit
//
//  Created by Firdavs Boltayev on 28/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let tabBarVc = UITabBarController()
        
        let vc1 = UINavigationController(rootViewController: vc1())
        let vc2 = UINavigationController(rootViewController: vc2())
        let vc3 = UINavigationController(rootViewController: vc3())
        let vc4 = UINavigationController(rootViewController: vc4())
        let vc5 = UINavigationController(rootViewController: vc5())
        
        vc1.title = "home"
        vc2.title = "contacts"
        vc3.title = "create"
        vc4.title = "contacts"
        vc5.title = "contacts"
        
        tabBarVc.setViewControllers([vc1,vc2,vc3,vc4,vc5], animated: false)
        tabBarVc.tabBar.backgroundColor = .white
        tabBarVc.tabBar.layer.cornerRadius = 20
        tabBarVc.tabBar.snp.makeConstraints { make in
            make.left.equalTo(20)
            make.right.equalTo(-20)
            make.height.equalTo(30)
            make.bottom.equalTo(-20)
        }
        
        guard let items = tabBarVc.tabBar.items else {
            return
        }
        
        let images = ["house","person.crop.circle.fill","plus.rectangle.fill","person.crop.circle.fill","person.crop.circle.fill"]
        for x in 0..<items.count {
            items[x].image = UIImage(systemName: images[x])
        }
        
        tabBarVc.modalPresentationStyle = .fullScreen
        self.present(tabBarVc, animated: false, completion: nil)
    }


}

class vc1: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        let app = UINavigationBarAppearance()
            app.backgroundColor = .white
        self.navigationController?.navigationBar.scrollEdgeAppearance = app
        title = "home"
        
    }
}

class vc2: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        title = "contacts"
    }
}

class vc3: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        title = "Create"
    }
}

class vc4: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        title = "contacts"
    }
}

class vc5: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        title = "contacts"
    }
}
