//
//  ProfileView.swift
//  Dub Dub Grub
//
//  Created by Clayton Watkins on 6/16/21.
//

import SwiftUI

struct ProfileView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var companyName = ""
    @State private var bio = ""
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(Color(.systemFill))
                    .frame(height: 130)
                HStack(spacing: 16) {
                    ZStack {
                        AvatarView(size: 84)
                        Button(action: {
                            // Edit Photo Button
                        }, label: {
                            Image(systemName: "square.and.pencil")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 14, height: 14)
                                .foregroundColor(.white)
                                .offset(y: 28)
                        })
                    }
                    
                    VStack(alignment: .leading, spacing: 1) {
                        TextField("First Name", text: $firstName)
                            .font(.system(size: 32, weight: .bold))
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                        TextField("Last Name", text: $lastName)
                            .font(.system(size: 32, weight: .bold))
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                        TextField("Company Name", text: $companyName)
                            .lineLimit(1)
                            .minimumScaleFactor(0.75)
                        
                    }
                    .padding(.trailing, 16)
                }
                .padding(.horizontal)
            }
            .padding(.bottom)
            
            
            VStack(spacing: 6) {
                HStack {
                    Text("Bio: ")
                        .font(.subheadline)
                        .foregroundColor(Color(.systemGray))
                        +
                        Text("\(100 - bio.count)")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(bio.count <= 100 ? .brandPrimary : Color(.systemPink))
                        +
                        Text(" Characters Remain")
                        .font(.subheadline)
                        .foregroundColor(Color(.systemGray))
                    
                    Spacer()
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 125, height: 35)
                            .foregroundColor(Color(.systemPink))
                        Button(action: {
                            // Check out Button
                        }, label: {
                            Image(systemName: "mappin.and.ellipse")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 15)
                                .foregroundColor(.white)
                            Text("Check Out")
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .bold()
                        })
                    }
                }
                TextEditor(text: $bio)
                    .frame(height: 100)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.secondary, lineWidth: 1))
                    .onChange(of: bio, perform: { _ in
                        
                        
                    })
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Create Profile")
                    .bold()
                    .frame(width: 280, height: 44)
                    .background(Color.brandPrimary)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding(.bottom, 30)
        .padding(.horizontal)
        .navigationTitle("Profile")
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ProfileView()
        }
    }
}
