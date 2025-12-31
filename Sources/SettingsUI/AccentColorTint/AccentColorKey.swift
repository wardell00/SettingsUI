//
//  AccentColorKey.swift
//  SettingsUI_Internal
//
//  Created by Alexander Löwe on 13.11.25.
//

import SwiftUI

public struct AccentColorIDKey: EnvironmentKey {
    
    public static var defaultValue: String {
        
        if let colorID = UserDefaults.standard.string(forKey: AppStorageKey.accentColorID) {
            return colorID
        }
        return AccentColorTint.blue.id
    }
}

public extension EnvironmentValues {
    
    var accentColorID: String {
        get { self[AccentColorIDKey.self] }
        set { self[AccentColorIDKey.self] = newValue }
    }
    
    var accentColorTint: AccentColorTint {
        AccentColorTint.allCases.first(where: { $0.id == accentColorID }) ?? .blue
    }
}
