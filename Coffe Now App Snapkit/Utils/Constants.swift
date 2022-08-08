//
//  Constants.swift
//  Coffe Now App Snapkit
//
//  Created by Firdavs Boltayev on 08/07/22.
//

import UIKit

enum LogoType {
    
    case login
    case register
    case addressSetup
    case forgotPasspord
    
    var image: UIImage? {
        
        switch self {
        case .login: return UIImage(named: "ic_logo")
        case .register: return UIImage(named: "ic_logo")
        case .addressSetup: return UIImage(named: "ic_logo")
        case .forgotPasspord: return UIImage(named: "ic_logo")
        }
    }
    
    var titleLabel: String? {
        
        switch self {
        case .login: return "LOGIN"
        case .register: return "REGISTER"
        case .addressSetup: return "ADDRESS SETUP"
        case .forgotPasspord: return "FORGORT PASSWORD"
        }
    }
}

enum TextFieldType {
    
    case email
    case password
    case fullname
    case phone_number
    case address_line_1
    case addess_line_2
    case zipCode
    case city
    case country
    
    var headerTitle: String? {
        switch self {
        case .email: return "Email"
        case .password: return "Password"
        case .fullname: return "Fullname"
        case .phone_number: return "Phone Number"
        case .address_line_1: return "Address Line 1"
        case .addess_line_2: return "Address Line 2"
        case .zipCode: return "ZIP Code"
        case .city: return "City"
        case .country: return "Country"
        }
    }
    
    var placeHolder: String? {
        switch self {
        case .email: return "exmpl@mail.com"
        case .password: return "*****"
        case .fullname: return "Jason Ranti"
        case .phone_number: return "+62 8777 2221"
        case .address_line_1: return "Address"
        case .addess_line_2: return "Address"
        case .zipCode: return "0231"
        case .city: return "Tashkent"
        case .country: return "Country"
        }
    }
    
    var isPassword: Bool {
        switch self {
        case .password: return true
        default: return false
        }
    }
}

enum ButtonType {
    
    case login
    case register
    case address
    case password
    case addBasket
    case checkout
    case placeOrder
    case trackOrder
    
    var buttonTitle: String? {
        switch self {
        case .login: return "LOGIN"
        case .register: return "REGISTER"
        case .address: return "ADD ADDRESS"
        case .password: return "Reset Password"
        case .addBasket: return "Add to Basket"
        case .checkout: return "Go to Checkout"
        case .placeOrder: return "Place Order"
        case .trackOrder: return "Track Order"
        }
    }
    
    var questiontitle: String {
        switch self {
        case .login: return "Don’t have an account?"
        case .register: return "Already have an account?"
        case .address: return "Skip for now"
        case .password: return ""
        case .addBasket: return ""
        case .checkout: return ""
        case .placeOrder: return ""
        case .trackOrder: return ""
        }
    }
    
    var additionalButtonTitle: String {
        switch self {
        case .login: return "Register"
        case .register:return "Login"
        case .address: return ""
        case .password: return ""
        case .addBasket: return ""
        case .checkout: return ""
        case .placeOrder: return ""
        case .trackOrder: return ""
        }
    }
    
}
