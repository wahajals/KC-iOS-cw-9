//
//  Movie.swift
//  FavMovie
//
//  Created by WSS on 24/08/2022.
//

import Foundation

struct Movie: Identifiable {
    let id = UUID()
    var MovieName: String
    var MovieAct: [String]
    var MovieStory: String
}

let myMovies =
    [
        Movie(MovieName: "Scent Of A Woman", MovieAct: ["Al Pacino","Chris O'Donnell", "Gabrielle Anwar"], MovieStory: "the story of a preparatory school student who takes a job as an assistant to an irritable, blind, medically retired Army lieutenant colonel"),
        Movie(MovieName: "The Curious Case Of Benjamin", MovieAct: ["Brad Pitt", "Kate Blanchett"], MovieStory: "Tells the story of Benjamin Button, a man who starts aging backwards with consequences"),
        Movie(MovieName: "Roman Holiday", MovieAct: ["Gregory Peck", "Audrey Hepburn"],MovieStory: "A bored and sheltered princess escapes her guardians and falls in love with an American newsman in Rome"),
        Movie(MovieName: "Titanic", MovieAct: ["Leonardo DiCaprio", "Kate Winslet", "Billy Zane"],MovieStory: "A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic"),
        Movie(MovieName: "Gone With The Wind", MovieAct: ["Clark Gable", "Vivien Leigh"],MovieStory: "The manipulative daughter of a Georgia plantation owner conducts a turbulent romance with a roguish profiteer during the American Civil War and Reconstruction periods"),
    ]

