//
//  UserDefaultsExt.swift
//  UserDefaultsExploration
//
//  Created by Hafizh Mo on 11/04/22.
//

import Foundation

extension UserDefaults {
    private enum UserDefaultsKeys: String{
        case signInMember
    }
    
    var signInMember: Member? {
        get {
            if let data = object(forKey: UserDefaultsKeys.signInMember.rawValue) as? Data {
                let member = try? JSONDecoder().decode(Member.self, from: data)
                return member
            }
            return nil
        }
        
        set {
            if newValue == nil {
                removeObject(forKey: UserDefaultsKeys.signInMember.rawValue)
            } else {
                let data = try? JSONEncoder().encode(newValue)
                setValue(data, forKey: UserDefaultsKeys.signInMember.rawValue)
            }
        }
    }
}
