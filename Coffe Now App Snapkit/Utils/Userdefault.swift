//
//  Userdefault.swift
//  Coffe Now App Snapkit
//
//  Created by Firdavs Boltayev on 27/07/22.
//

import Foundation

extension UserDefaults {
    func setUserLogin(log: Bool) {
   set(log, forKey: "Logn")
    }
    
    func getUserLogin() -> Bool? {
        return bool(forKey: "Logn")
    }
}
