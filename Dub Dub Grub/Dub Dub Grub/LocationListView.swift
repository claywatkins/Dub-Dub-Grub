//
//  LocationListView.swift
//  Dub Dub Grub
//
//  Created by Clayton Watkins on 6/16/21.
//

import SwiftUI

struct LocationListView: View {
    var body: some View {
        NavigationView {
            List(0..<10) { _ in
                NavigationLink(destination: LocationDetailView()) {
                    LocationCell()
                }
                
            }
            .navigationTitle("Grub Spots")
        }
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}

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

struct LocationCell: View {
    var body: some View {
        HStack{
            Image("default-square-asset")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
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
