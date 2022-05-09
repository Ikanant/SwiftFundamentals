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
// Note1: Ranges are allowed!
// Note2: Like other languages, even though you might have 2 cases that are valid,
// ONLY the first found will run... in this case I will print "I can use Ranges"
case 100...200:
    print("I can use RANGES")
case 123:
    print("ONE TWO THREE but NOT FOUR")
case 111,222,333: // This is the way to deal with fall through cases
    break
default:
    print("DEFAULT VALUE 😀")
}


// So weird, loops are pretty straight forward BUT SWIFT does NOT allow for good old for-loops

//for (var i=0; i<10; i++) {
//    print(i)
//}

var bunchOfWords: [String] = ["one", "random", "car", "coffee"];
// Straight forward... but interesting how I was NOT allowed to use parenthesis here
for word in bunchOfWords {
    print(word)
}

// The range inclusive
for randomVarName in 1..<10 {
    print (randomVarName)
}


var stringInterpolationSyntax: String = "bananas"
print ("I like \(stringInterpolationSyntax)")

var stringInterpolationConversionSyntax: Int = 123
print ("I like to eat: \(stringInterpolationConversionSyntax) \(stringInterpolationSyntax) ")
