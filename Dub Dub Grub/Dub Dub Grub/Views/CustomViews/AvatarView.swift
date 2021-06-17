//
//  AvatarView.swift
//  Dub Dub Grub
//
//  Created by Clayton Watkins on 6/17/21.
//

import SwiftUI

struct AvatarView: View {
    var size: CGFloat
    var name: String?
    
    var body: some View {
        VStack {
            Image("default-avatar")
                .resizable()
                .scaledToFit()
                .frame(width: size, height: size)
                .clipShape(Circle())
            if let name = name {
                Text(name)
                    .bold()
                    .lineLimit(1)
                    .minimumScaleFactor(0.75)
            }
        }
    }
}

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView(size: 90)
    }
}
