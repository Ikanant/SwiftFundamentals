protocol myCoolProtocol {
    // EVERYTHING that adopts this protocol NEEDS to provide a method that takes no parameters and return nothing:
    func showMessages()
    
    // When it comes to properties they are a bit different than methods
    // Protocol just says we need a property of THIS NAME and THIS TYPE... that's it
    // Well, sort of... we also NEED the curly braces to set the specifiers! - Not for behavior... but just to mention either GET or GET/SET... so we define if this is a ReadOnly or Writable property
    var name: String { get set }
}

class banana: myCoolProtocol {
    func showMessages() {
        print("Banana")
    }
    var name: String = "Hello"
}
