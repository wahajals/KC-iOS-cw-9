//
//  ContentView.swift
//  FavMovie
//
//  Created by WSS on 24/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Image("Movies2")
                    .resizable()
                    .ignoresSafeArea()
                    .background(.white)
                    .blur(radius: 5)
                List{
                    ForEach(myMovies) { Movie in
                        NavigationLink(destination: {
                            MoviesInfo(ourmovie: Movie)
                        }, label: {
                            RowView(Movie: Movie.MovieName)
                        }
                        )}.navigationTitle("FavMovies")
                    
                } .opacity(0.8)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
