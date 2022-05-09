func helloWorld (name: String) {
    print("Hello Indeed \(name)")
}

helloWorld(name: "Jon")

// Simple function call
func getName() -> String {
    return "Jonathan"
}
print("Hello again, \(getName())")

// Define function using different argument labels:
func printPersonalInfo(superCoolLabelFirstName firstName: String, randomVariableLabel lastName: String, _ age: Int) {
    print("Hello there \(firstName) \(lastName). Nice to meet you. Happy \(age)'s birthday by the way")
}

printPersonalInfo(superCoolLabelFirstName: "Jonathan", randomVariableLabel: "Hernandez", 21)
