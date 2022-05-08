// I don't need to use parenthesis on IF statements:
// I always have to use curly brackets, EVEN if it's a one line statement
var apple:Int = 123

if apple == 123 {
    print("Cool beans")
}

// Non-True/False conditions are NOT allowed
//if apple {
//    print("Non-True/False conditions are NOT allowed")
//}

// Switch needs the curly braces, but the rest of the cases do NOT
// Switch is COOL with unicode... so we can even use emojis 😀
switch apple {
case 0:
    print("ZERO")
case 1:
    print("ONE")
    break // NOT REQUIRED, BUT ALLOWED
case 123:
    print("ONE TWO THREE but NOT FOUR")
case 111,222,333: // This is the way to deal with fall through cases
    break
default:
    print("DEFAULT VALUE 😀")
}
