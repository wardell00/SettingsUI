//
//  AppearancePicker.swift
//  SettingsUI
//
//  Created by Alexander Löwe on 13.07.25.
//

import SwiftUI
import SettingsUI_Internal
@_exported import SettingsUI_Protocols

public struct Appearancepicker: View {

    public init() {}
    
    public var body: some View {
        _AppearancePicker()
    }
}

#Preview {
    @Previewable @State var vm = SettingsValues.init()
    Appearancepicker().environment(vm)
}
