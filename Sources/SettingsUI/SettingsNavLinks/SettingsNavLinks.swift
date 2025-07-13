//
//  SettingsNavLinks.swift
//  SettingsUI
//
//  Created by Alexander Löwe on 13.07.25.
//

import SwiftUI
import SettingsUI_Internal


public struct SettingsNavLinks {
    
    @MainActor
    public static var accentColor: some View {
        AccentColorNavLink()
    }
    
    @MainActor
    public static var appearance: some View {
        AppearanceNavLink()
    }
    
    @MainActor
    public static var tags: some View {
        ManageTagsNavLink()
    }
    
    @MainActor
    public static var recentlyDeleted: some View {
        RecentlyDeletedNavLink()
    }
}
