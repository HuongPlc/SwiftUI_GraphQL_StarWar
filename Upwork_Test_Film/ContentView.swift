//
//  ContentView.swift
//  Upwork_Test_Film
//
//  Created by Hanh Nguyen Xuan on 06/12/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = ListFilmsModel()
    
    var body: some View {
        NavigationView {
            List(model.filteredFilms, id: \.id) { film in
                NavigationLink(film.title ?? "") {
                    FilmDetailView(filmId: film.id)
                }
            }
        }
        .navigationTitle("List Films")
        .searchable(text: $model.searchText)
        .onAppear {
            model.fetchListFilms()
        }
    }
}

#Preview {
    ContentView()
}
