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
    let alignment: Alignment
    
    public init(alignment: Alignment = .center) {
        self.alignment = alignment
    }
    
    public var body: some View {
        AppearancePicker(alignment: alignment)
    }
}

#Preview {
    @Previewable @State var vm = SettingsValues.init()
    Appearancepicker().environment(vm)
}
