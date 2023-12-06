//
//  FilmDetailModel.swift
//  Upwork_Test_Film
//
//  Created by Hanh Nguyen Xuan on 06/12/2023.
//

import Foundation
import SwiftUI

class DetailFilmModel: ObservableObject {
    @Published var filmDetail: FilmDetailQuery.Data.Film? = nil
    
    func getFilmDetail(with filmId: String) {
        let query = FilmDetailQuery(filmId2: filmId)
        
        Apollo.shared.client.fetch(query: query) { result in
            switch result {
            case .success(let data):
                self.filmDetail = data.data?.film
                print("haha: \(self.filmDetail?.title) __ \(filmId)")
            case .failure(let error):
                print("Can't fetch list films")
            }
        }
    }
}
