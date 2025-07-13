//
//  AccentColorThemePicker.swift
//  SettingsUI
//
//  Created by Alexander Löwe on 13.07.25.
//

import SwiftUI
import SettingsUI_Internal
@_exported import SettingsUI_Protocols

public struct AccentColorThemePicker: View {
    let accentColorChoices: [AccentColorTint]
    
    public init(accentColorChoices: [AccentColorTint] = AccentColorTint.allCases) {
        self.accentColorChoices = accentColorChoices
    }
    public var body: some View {
        _AccentColorThemePicker(accentColorChoices)
    }
}

#Preview {
    @Previewable @State var vm = SettingsValues.init()
    AccentColorThemePicker().environment(vm)
}
