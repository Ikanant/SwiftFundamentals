class Person {
    var firstName: String = ""
    var lastName: String = ""
    
    func printName() {
        print ("Hi, my name is: \(firstName) \(self.lastName)")
    }
}

var user = Person()
user.firstName = "Jonathan"
user.lastName = "Snow"
user.printNa me()
  
