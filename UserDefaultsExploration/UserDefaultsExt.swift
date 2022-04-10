//
//  UserDefaultsExt.swift
//  UserDefaultsExploration
//
//  Created by Hafizh Mo on 11/04/22.
//

import Foundation

extension UserDefaults {
    private enum UserDefaultsKeys: String{
        case switchIsOn
    }
    
    var switchIsOn: Bool{
        get{
            bool(forKey: UserDefaultsKeys.switchIsOn.rawValue)
        }
        set{
            setValue(newValue, forKey: UserDefaultsKeys.switchIsOn.rawValue)
        }
    }
}
