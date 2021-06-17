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
