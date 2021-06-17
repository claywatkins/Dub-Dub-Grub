//
//  CustomModifiers.swift
//  Dub Dub Grub
//
//  Created by Clayton Watkins on 6/17/21.
//

import SwiftUI

struct ProfileNameText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 32, weight: .bold))
            .lineLimit(1)
            .minimumScaleFactor(0.75)
    }
}
