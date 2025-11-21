//
//  URLLINKView.swift
//  SettingsUI
//
//  Created by Alexander Löwe on 13.07.25.
//

import SwiftUI
import SettingsUI_Internal

public struct URLLINKView: View {
    
    let urlLink: URLLink
    
    public init(urlLink: URLLink) {
        self.urlLink = urlLink
    }
    
   public var body: some View {
        _URLLinkView(urlLink: urlLink)
    }
}

