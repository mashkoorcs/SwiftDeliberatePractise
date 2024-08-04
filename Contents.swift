import UIKit

var greeting = "Hello, playground"

//String and all about strings

//initialising string
var emptyString = "" //empty string (Mutable)

let emptyStringOtheWay = String() // declaring empty string
let helloWorld = "Hello world!" //empty string leteral

//properties
helloWorld.lowercased()
helloWorld.uppercased()
helloWorld.isEmpty

//Multi line String
let verse = """
    Hello world!
    this is multiline string!
    """

let password = "ios12345"
password.hasPrefix("ios")
password.hasSuffix("345")

//Drop and remove
  
var name = "Tom Dick and Harry"
name.dropFirst()   //it will remove and return first character , but not modify original String 'name'

name.dropLast() // it will remove and return last character ,but not modify original string 'name'

name.dropFirst(3) // it will drop and return first 3 , but oringinal string not affected .
name.dropLast(5) // it will drop and return last 5 , but original string not affected.
name
name.removeFirst()  //
name.removeLast()
name

//string concatenation
var first = "Hello"
var second = "world"
print(first+" "+second)

//string interapolation
print("6 times 7 is \(6*7)")


//working with characters
for char in "Hello" {
    print(char)
}
let helloChars: [Character] = ["H","e","l","l","o"]

String(helloChars)

//useful character properties
let a = "A" as Character
let pi = "π" as Character

a.isASCII
pi.isASCII

a.asciiValue
pi.asciiValue

let five = "5" as Character
let half = "½" as Character
five.isNumber
half.isNumber

five.isWholeNumber
five.wholeNumberValue
half.isWholeNumber
half.wholeNumberValue

a.isLetter
let smiley = "🙂" as Character
smiley.isSymbol
smiley.isLetter

let plus = "+" as Character
plus.isSymbol
plus.isLetter
plus.isMathSymbol
smiley.isMathSymbol

let dollar = "$" as Character
dollar.isCurrencySymbol

let qmark = "?" as Character
qmark.isPunctuation

let b = "b" as Character
let z = "Z" as Character
b.isLowercase
z.isUppercase
b.uppercased()
z.lowercased()




//String Indices
let hello = "hello"
let startIndex = hello.startIndex //0
let endIndex = hello.endIndex  // 5
hello[startIndex]
hello[hello.index(after: startIndex)]
hello[hello.index(before: endIndex)]

hello[hello.index(startIndex, offsetBy: 1)]
hello[hello.index(endIndex, offsetBy: -4)]
hello[hello.index(startIndex, offsetBy: 4, limitedBy: endIndex) ?? startIndex]

for index in hello.indices {
    print("the hello world letter by letter \(hello[index])")
}


//substring

let greetings = "Hello , world !"

let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<index]

//Convert the result to a string for long-term storage .
let newString = String(beginning)

let endingIndex1 = greetings.index(greetings.startIndex, offsetBy: 7)
let ending1 = greetings[endingIndex1...]

let endingIndex2 = greetings.index(greetings.endIndex, offsetBy: -1)
let ending2 = greetings[endingIndex1..<endingIndex2]

//Insert A character at Index
var stars = "******"
stars.insert("X", at: stars.index(stars.startIndex, offsetBy: 3))


var stars2 = "****xyz****"
if let xyzRange = stars2.firstRange(of: "xyz") {
    stars2.replaceSubrange(xyzRange, with: "ABC")
}

let stars3 = stars2.replacingOccurrences(of: "xyz", with: "ABC")

let numString = "1 2 3 4 5 6"
let stringToArray = numString.components(separatedBy: " ")
let StringFromArray = stringToArray.joined(separator: ",")



