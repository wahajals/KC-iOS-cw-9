//
//  MoviesInfo.swift
//  FavMovie
//
//  Created by WSS on 24/08/2022.
//

import SwiftUI

struct MoviesInfo: View {
    var ourmovie: Movie
    var body: some View {
        ZStack{
            Image(ourmovie.MovieName)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
                .blur(radius: 12)
            VStack{
                Image(ourmovie.MovieName)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 250, height:250)
                Text(ourmovie.MovieName)
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                Text(ourmovie.MovieStory)
                    .foregroundColor(.yellow)
                    .bold()
                    .font(.title2)
                    .background(.quaternary).opacity(0.8)
                    .frame(width:380, height: 150, alignment: .center)
                Spacer()
                ScrollView(.horizontal){
                    HStack{
                        ForEach(ourmovie.MovieAct, id: \.self) { act in
                            VStack{
                                Text(act)
                                    .foregroundColor(.white)
                                    .bold()
                                    .font(.title)
                                    .padding()
                                Image(act)
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Capsule())
                                    .frame(width: 200, height:180)
                                
                            }
                        }
                    }
                }   .frame(width: 400, height:200)
                
            }
        }
        
    }
}

struct MoviesInfo_Previews: PreviewProvider {
    static var previews: some View {
        MoviesInfo(ourmovie: Movie(MovieName: "Scent Of A Woman", MovieAct: ["Al Pacino"], MovieStory: "the story of a preparatory school student who takes a job as an assistant to an irritable, blind, medically retired Army lieutenant colonel"))
    }
}
