var apple:Int? = 123

print(apple)
if let orange = apple {
    print(orange)
}
else {
    print("No value found")
}
// orange is NOT part of the scope at this point!
// print (orange)
