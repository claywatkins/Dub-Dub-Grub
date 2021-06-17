//
//  LocationCell.swift
//  Dub Dub Grub
//
//  Created by Clayton Watkins on 6/17/21.
//

import SwiftUI

struct LocationCell: View {
    var body: some View {
        HStack{
            Image("default-square-asset")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.vertical, 8)
            VStack(alignment: .leading, spacing: 15) {
                Text("Resturant Name")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.75)
                HStack {
                    ForEach(0..<5) { _ in
                        AvatarView(size: 35)
                    }
                }
            }
            .padding(.leading, 8)
        }
    }
}

struct LocationCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationCell()
    }
}
