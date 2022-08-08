//
//  tabBar.swift
//  Coffe Now App Snapkit
//
//  Created by Firdavs Boltayev on 05/08/22.
//

import UIKit

class tabBar: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
           UITabBar.appearance().barTintColor = .systemBackground
           tabBar.tintColor = .label
           setupVCs()
    }
    
    func setupVCs() {
        viewControllers = [
               createNavController(for: HomeViewController(), title: NSLocalizedString("", comment: ""), image:UIImage(named:"Home")!),
               createNavController(for: SearchViewController(), title: NSLocalizedString("", comment: ""), image:  UIImage(named:"Search")!),
               createNavController(for: DocumentViewController(), title: NSLocalizedString("", comment: ""), image: UIImage(named:"Document")!),
               createNavController(for: ProfileViewController(), title: NSLocalizedString("", comment: ""), image: UIImage(named:"Profile")!)
           ]
    }
    
    fileprivate func createNavController(for rootViewController: UIViewController,
                                                    title: String,
                                                    image: UIImage) -> UIViewController {
          let navController = UINavigationController(rootViewController: rootViewController)
//          navController.tabBarItem.title = title
          navController.tabBarItem.image = image
        navController.tabBarController?.tabBar.backgroundColor = .green

        navController.tabBarItem.scrollEdgeAppearance?.backgroundColor = .red
//          navController.navigationBar.prefersLargeTitles = true
        navController.navigationBar.isHidden = true
        self.navigationItem.hidesBackButton = true
        self.navigationController?.isNavigationBarHidden = true
        navController.modalPresentationStyle = .fullScreen
//        navController.tabBarItem.standardAppearance?.backgroundColor = .red
          return navController
      }
}
