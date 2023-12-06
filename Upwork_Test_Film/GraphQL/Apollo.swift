//
//  Apollo.swift
//  Upwork_Test_Film
//
//  Created by Hanh Nguyen Xuan on 06/12/2023.
//

import Foundation
import Apollo

class Apollo {
    static let shared = Apollo()
    
    let client: ApolloClient

    init() {
      client = ApolloClient(url: URL(string: "https://swapi-graphql.netlify.app/.netlify/functions/index")!)
    }

}
