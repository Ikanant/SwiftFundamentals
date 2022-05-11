struct Book {
    var name: String
    var rating: Int
    var yearReleased: Int
}

var books: [Book] = [
    Book(name: "Game of Thrones", rating: 8, yearReleased: 1990),
    Book(name: "Lord of the Rings", rating: 10, yearReleased: 1935),
    Book(name: "SAGA", rating: 5, yearReleased: 2005),
    Book(name: "Cracking the Coding Interview", rating: 10, yearReleased: 2010)
]
print ("---------------- ORIGINAL ORDER")
for book in books {
    print(book.name)
}

print ("---------------- MY INITIAL APPROACH")
var sortedBooks1 = books.sorted {
    return $0.rating > $1.rating
}
for book in sortedBooks1 {
    print(book.name)
}

print ("---------------- MOST VERBOSE APPROACH")
// func sorted(by areInIncreasingOrder: (Element, Element) throws -> Bool) rethrows -> [Element]
func mySortedFunction (book1: Book, book2: Book) -> Bool {
    if (book1.rating > book2.rating) {
        return true
    }
    else {
        return false
    }
}

var sortedBooks2 = books.sorted(by: mySortedFunction)
for book in sortedBooks2 {
    print(book.name)
}

print ("---------------- START CLEANING UP APPROACH")
// func sorted(by areInIncreasingOrder: (Element, Element) throws -> Bool) rethrows -> [Element]
// I do NOT need the func and function name... just move the signature and put it inside the curly braces of the function above
// We need to once again establish the divsion between the parameters and the return type.. so we use the keyword IN
var sortedBooks3 = books.sorted(by: {
    (book1: Book, book2: Book) -> Bool in
    if (book1.rating > book2.rating) {
        return true
    }
    else {
        return false
    }
})

print ("---------------- START MORE CLEANING UP APPROACH")
// Now, when the closure I am writing has parameters (like the one the sorted method asks for)... I can just use the dollar sign. Easy:
// I don't even need to include the function signature:

var sortedBooks4 = books.sorted(by: {
    if ($0.rating > $1.rating) {
        return true
    }
    else {
        return false
    }
})

print ("---------------- ALMOST THERE")
// Last but not least, if closure is the ONLY argument to a function call, it's not fun forcing it to be inside the parenthesis:
// So we can do a TRAILING CLOSURE:
var sortedBooks5 = books.sorted(by: ) { // Here the parenthesis are redundant and can be removed as well
    if ($0.rating > $1.rating) {
        return true
    }
    else {
        return false
    }
}

print ("---------------- BOOM. NOW WE ARE TALKING")
// Last but not least, we can just do:
var sortedBooks6 = books.sorted { $0.rating > $1.rating } // Don't even need the return statement since we did it all in ONE LINE
