//
//  SettingsNavLinks.swift
//  SettingsUI
//
//  Created by Alexander Löwe on 13.07.25.
//

import SwiftUI
import SettingsUI_Internal


public extension _SettingsNavigationLink where T == Color {
    
    static func accentColor(tint: Color) -> _SettingsNavigationLink {
        .init(accentColor: tint)
    }
    
    static func recentyDeleted(tint: Color) -> _SettingsNavigationLink {
        .init(recentlyDeleted: tint)
    }
    
    static func manageTags(tint: Color) -> _SettingsNavigationLink {
        .init(manageTags: tint)
    }
    
    static func appearance(appearance: Appearance, tint: Color) -> _SettingsNavigationLink {
        .init(appearance: appearance, symbolTint: tint)
    }
}


public extension _SettingsNavigationLink where T == AnyGradient {
    
    static func accentColor(tint: AnyGradient) -> _SettingsNavigationLink {
        .init(accentColor: tint)
    }
    
    static func recentyDeleted(tint: AnyGradient) -> _SettingsNavigationLink {
        .init(recentlyDeleted: tint)
    }
    
    static func manageTags(tint: AnyGradient) -> _SettingsNavigationLink {
        .init(manageTags: tint)
    }
    
    static func appearance(appearance: Appearance, tint: AnyGradient) -> _SettingsNavigationLink {
        .init(appearance: appearance, symbolTint: tint)
    }
}

#Preview {
    @Previewable @State var vm = SettingsValues.init()
    List {
        SettingsNavigationLink.accentColor(tint: .blue)
        SettingsNavigationLink.appearance(appearance: vm.appearance, tint: vm.appearance.imageColor.gradient)
        SettingsNavigationLink.manageTags(tint: Color.blue.gradient)
        SettingsNavigationLink.recentyDeleted(tint: .red)
        
    }
}
