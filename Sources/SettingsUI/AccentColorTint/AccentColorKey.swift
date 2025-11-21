//
//  AccentColorKey.swift
//  SettingsUI_Internal
//
//  Created by Alexander Löwe on 13.11.25.
//

import SwiftUI

public struct AccentColorKey: EnvironmentKey {
    
    public static var defaultValue: AccentColorTint {
        
        if let raw = UserDefaults.standard.data(forKey: AppStorageKey.accentColor),
           let value = try? JSONDecoder().decode(AccentColorTint.self, from: raw) {
            return value
        }
        return .blue
    }
}

public extension EnvironmentValues {
    
    var accentColor: AccentColorTint {
        get {
            self[AccentColorKey.self]
        } set {
            self[AccentColorKey.self] = newValue
            if let data = try? JSONEncoder().encode(newValue) {
                UserDefaults.standard.set(data, forKey: AppStorageKey.accentColor)
            }
        }
    }
}
