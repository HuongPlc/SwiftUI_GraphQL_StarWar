//
//  FilmDetailView.swift
//  Upwork_Test_Film
//
//  Created by Hanh Nguyen Xuan on 06/12/2023.
//

import SwiftUI

struct FilmDetailView: View {
    let filmId: String
    
    @ObservedObject var model = DetailFilmModel()
    
    var body: some View {
        VStack {
            List {
                if model.filmDetail != nil {
                    Section(header: Text("Title")) {
                        Text(model.filmDetail?.title ?? "")
                    }
                    Section(header: Text("Opening Crawl")) {
                        Text(model.filmDetail?.openingCrawl ?? "")
                    }
                    Section(header: Text("Episode Id")) {
                        Text("\(model.filmDetail?.episodeId ?? 0)")
                    }
                }
            }
           
        }
        .onAppear {
            model.getFilmDetail(with: filmId)
        }
    }
}

#Preview {
    FilmDetailView(filmId: "fd")
}
