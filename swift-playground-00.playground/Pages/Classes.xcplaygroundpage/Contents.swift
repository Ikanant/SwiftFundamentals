class PersonClass {
    var firstName: String
    var lastName: String
    
    init (firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    func printName() {
        print ("Hi, my name is: \(firstName) \(self.lastName)")
    }
}


struct PersonStruct {
    var firstName: String
    var lastName: String
    func printName() {
        print ("Hi, my name is: \(firstName) \(self.lastName)")
    }
}

var p1 = PersonClass(firstName: "Jon", lastName: "A")
var s1 = PersonStruct(firstName: "Jon", lastName: "B")

var p2 = p1
p2.firstName = "Peter"
print(p1.firstName)

var s2 = s1
s2.firstName = "Pedro"
print(s1.firstName)
