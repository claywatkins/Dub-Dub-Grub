//
//  View+Extension.swift
//  Dub Dub Grub
//
//  Created by Clayton Watkins on 6/17/21.
//

import SwiftUI

extension View {
    func profileNameText() -> some View {
        self.modifier(ProfileNameText())
    }
}
