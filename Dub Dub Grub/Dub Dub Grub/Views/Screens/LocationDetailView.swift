//
//  LocationDetailView.swift
//  Dub Dub Grub
//
//  Created by Clayton Watkins on 6/16/21.
//

import SwiftUI

struct LocationDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack(spacing: 16) {
            BannerImageView(imageName: "default-banner-asset")
            HStack {
                AddressView(address: "123 Main Street")
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top, 5)
            
            DesciptionView(text: "It's Chipolte. Enough Said. It's Chipolte. Enough Said. It's Chipolte. Enough Said. It's Chipolte. Enough Said. It's Chipolte. Enough Said. It's Chipolte. Enough Said. ")
            
            ZStack {
                Capsule()
                    .frame(height: 80)
                    .foregroundColor(Color(.systemGray))
                HStack {
                    Button {
                        
                    } label : {
                        LocationButtonAction(color: .brandPrimary, imageName: "location.fill")
                    }
                    Link(destination: URL(string: "https://www.apple.com")!, label: {
                        LocationButtonAction(color: .brandPrimary, imageName: "network")
                    })
                    Button {
                        
                    } label : {
                        LocationButtonAction(color: .brandPrimary, imageName: "phone.fill")
                    }
                    Button {
                        
                    } label : {
                        LocationButtonAction(color: Color(.systemPink), imageName: "person.fill.xmark")
                    }
                    
                }
            }
            .padding(.horizontal)
            
            Text("Who's Here?")
                .font(.title2)
                .fontWeight(.semibold)
            
            ScrollView {
                LazyVGrid(columns: columns, content: {
                    ForEach(0..<10) { _ in
                        AvatarView(size: 64, name: "Test name")
                        
                    }
                    
                })
            }
            
            
        }
        .navigationTitle("Resturant Name")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }, label: {
            Text("Dismiss")
                .foregroundColor(.brandPrimary)
        }))
    }
}



struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetailView()
        }
    }
}


struct LocationButtonAction: View {
    var color: Color
    var imageName: String
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(color)
                .frame(width: 60, height: 60)
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundColor(.white)
                .frame(width: 22, height: 22)
            
        }
        .padding(.leading, 15)
    }
}

struct BannerImageView: View {
    var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(height: 120)
    }
}

struct AddressView: View {
    var address: String
    
    var body: some View {
        Label(address, systemImage: "mappin.and.ellipse")
            .font(.caption)
            .foregroundColor(.secondary)
    }
}

struct DesciptionView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .lineLimit(3)
            .minimumScaleFactor(0.75)
            .frame(height: 70)
            .padding(.horizontal)
    }
}
