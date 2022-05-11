// Style guide is to make our types to start with capital case
enum MediaType {
    case book, movie, music, game
}
var itemType: MediaType
itemType = MediaType.book
print("My media type is of type: \(itemType)")

// Test associated media types
enum AssociatedMediaType {
    case book(String)
    case music(Int)
    case movie(String)
}
let associatedItemType: AssociatedMediaType = .book("comedy")
switch (associatedItemType) {
case .book(let bookGenre):
    print("The book genre is \(bookGenre)")
case .music:
    print("The song has a bpm of \(associatedItemType)")
case .movie(let randomPropertyName):
    print("The book genre is \(randomPropertyName)")
}

struct Movie {
    // Properties
    var name: String
    var yearRelease: Int
    var rating = 0
    var genre: String
    
    // Methods
    func summary () -> String {
        return "My movie \(name) was release in \(yearRelease) and got a score of \(rating) even though it was a \(genre) movie!"
    }
}
var dune = Movie(name: "Done", yearRelease: 2021, rating: 10, genre: "Action")
 
print(dune.rating)
print(dune.summary())
