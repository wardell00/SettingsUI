//
//  File.swift
//  SettingsUI
//
//  Created by Alexander Löwe on 21.11.25.
//

import SwiftUI

public struct AppearanceKey: EnvironmentKey {
    public static var defaultValue: Appearance {
        if let raw = UserDefaults.standard.string(forKey: AppStorageKey.appearance),
           let value = Appearance(rawValue: raw) {
            return value
        }
        return .System
    }
}

public extension EnvironmentValues {
    
    var appearance: Appearance {
        get {
            self[AppearanceKey.self]
        } set {
            self[AppearanceKey.self] = newValue
            UserDefaults.standard.set(newValue.rawValue, forKey: AppStorageKey.appearance)
        }
    }
}
