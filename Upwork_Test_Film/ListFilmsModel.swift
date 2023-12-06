//
//  ListFilmsModel.swift
//  Upwork_Test_Film
//
//  Created by Hanh Nguyen Xuan on 06/12/2023.
//

import Foundation
import SwiftUI

class ListFilmsModel: ObservableObject {
    typealias Film = AllFilmsQuery.Data.AllFilm.Film
    
    @Published var listFilms: [Film] = []
    @Published var searchText = ""
    
    var filteredFilms: [Film] {
           guard !searchText.isEmpty else { return listFilms }
           return listFilms.filter { film in
               film.title?.lowercased().contains(searchText.lowercased()) ?? false
           }
       }
    
    func fetchListFilms() {
        let query = AllFilmsQuery()
        Apollo.shared.client.fetch(query: query) { result in
            switch result {
            case .success(let data):
                self.listFilms = data.data?.allFilms?.films?.compactMap{ $0 } ?? []
            case .failure(let error):
                print("Can't fetch list films")
            }
        }
    }
}
