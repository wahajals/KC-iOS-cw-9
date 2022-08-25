//
//  RowView.swift
//  FavMovie
//
//  Created by WSS on 25/08/2022.
//

import SwiftUI

struct RowView: View {
    @State var Movie: String
    var body: some View {
        HStack{
            Image(Movie)
                .resizable()
                .scaledToFit()
                .clipShape(Capsule())
                .frame(width: 100, height: 180)
                .shadow(radius:30)
            
            Text(Movie)
                .bold()
                .font(.title2)
        }
    }
}


struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(Movie: "")
    }
}
