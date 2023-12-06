// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class AllFilmsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query AllFilms {
      allFilms {
        __typename
        films {
          __typename
          id
          title
        }
      }
    }
    """

  public let operationName: String = "AllFilms"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Root"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("allFilms", type: .object(AllFilm.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(allFilms: AllFilm? = nil) {
      self.init(unsafeResultMap: ["__typename": "Root", "allFilms": allFilms.flatMap { (value: AllFilm) -> ResultMap in value.resultMap }])
    }

    public var allFilms: AllFilm? {
      get {
        return (resultMap["allFilms"] as? ResultMap).flatMap { AllFilm(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "allFilms")
      }
    }

    public struct AllFilm: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["FilmsConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("films", type: .list(.object(Film.selections))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(films: [Film?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "FilmsConnection", "films": films.flatMap { (value: [Film?]) -> [ResultMap?] in value.map { (value: Film?) -> ResultMap? in value.flatMap { (value: Film) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// A list of all of the objects returned in the connection. This is a convenience
      /// field provided for quickly exploring the API; rather than querying for
      /// "{ edges { node } }" when no edge data is needed, this field can be be used
      /// instead. Note that when clients like Relay need to fetch the "cursor" field on
      /// the edge to enable efficient pagination, this shortcut cannot be used, and the
      /// full "{ edges { node } }" version should be used instead.
      public var films: [Film?]? {
        get {
          return (resultMap["films"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Film?] in value.map { (value: ResultMap?) -> Film? in value.flatMap { (value: ResultMap) -> Film in Film(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Film?]) -> [ResultMap?] in value.map { (value: Film?) -> ResultMap? in value.flatMap { (value: Film) -> ResultMap in value.resultMap } } }, forKey: "films")
        }
      }

      public struct Film: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Film"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("title", type: .scalar(String.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, title: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Film", "id": id, "title": title])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The ID of an object
        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// The title of this film.
        public var title: String? {
          get {
            return resultMap["title"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }
      }
    }
  }
}

public final class FilmDetailQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query FilmDetail($filmId2: ID) {
      film(id: $filmId2) {
        __typename
        characterConnection {
          __typename
          characters {
            __typename
            name
          }
        }
        episodeID
        title
        openingCrawl
      }
    }
    """

  public let operationName: String = "FilmDetail"

  public var filmId2: GraphQLID?

  public init(filmId2: GraphQLID? = nil) {
    self.filmId2 = filmId2
  }

  public var variables: GraphQLMap? {
    return ["filmId2": filmId2]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Root"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("film", arguments: ["id": GraphQLVariable("filmId2")], type: .object(Film.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(film: Film? = nil) {
      self.init(unsafeResultMap: ["__typename": "Root", "film": film.flatMap { (value: Film) -> ResultMap in value.resultMap }])
    }

    public var film: Film? {
      get {
        return (resultMap["film"] as? ResultMap).flatMap { Film(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "film")
      }
    }

    public struct Film: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Film"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("characterConnection", type: .object(CharacterConnection.selections)),
        GraphQLField("episodeID", type: .scalar(Int.self)),
        GraphQLField("title", type: .scalar(String.self)),
        GraphQLField("openingCrawl", type: .scalar(String.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(characterConnection: CharacterConnection? = nil, episodeId: Int? = nil, title: String? = nil, openingCrawl: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Film", "characterConnection": characterConnection.flatMap { (value: CharacterConnection) -> ResultMap in value.resultMap }, "episodeID": episodeId, "title": title, "openingCrawl": openingCrawl])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var characterConnection: CharacterConnection? {
        get {
          return (resultMap["characterConnection"] as? ResultMap).flatMap { CharacterConnection(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "characterConnection")
        }
      }

      /// The episode number of this film.
      public var episodeId: Int? {
        get {
          return resultMap["episodeID"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "episodeID")
        }
      }

      /// The title of this film.
      public var title: String? {
        get {
          return resultMap["title"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "title")
        }
      }

      /// The opening paragraphs at the beginning of this film.
      public var openingCrawl: String? {
        get {
          return resultMap["openingCrawl"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "openingCrawl")
        }
      }

      public struct CharacterConnection: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["FilmCharactersConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("characters", type: .list(.object(Character.selections))),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(characters: [Character?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "FilmCharactersConnection", "characters": characters.flatMap { (value: [Character?]) -> [ResultMap?] in value.map { (value: Character?) -> ResultMap? in value.flatMap { (value: Character) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// A list of all of the objects returned in the connection. This is a convenience
        /// field provided for quickly exploring the API; rather than querying for
        /// "{ edges { node } }" when no edge data is needed, this field can be be used
        /// instead. Note that when clients like Relay need to fetch the "cursor" field on
        /// the edge to enable efficient pagination, this shortcut cannot be used, and the
        /// full "{ edges { node } }" version should be used instead.
        public var characters: [Character?]? {
          get {
            return (resultMap["characters"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Character?] in value.map { (value: ResultMap?) -> Character? in value.flatMap { (value: ResultMap) -> Character in Character(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Character?]) -> [ResultMap?] in value.map { (value: Character?) -> ResultMap? in value.flatMap { (value: Character) -> ResultMap in value.resultMap } } }, forKey: "characters")
          }
        }

        public struct Character: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Person"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(name: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "Person", "name": name])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The name of this person.
          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }
        }
      }
    }
  }
}
