# STRING in IOS 

``` swift
  var greeting = "Hello, playground"
```
## initialising String
``` swift
 var emptyString = "" //empty string (Mutable)

 let emptyStringOtheWay = String() // declaring empty string
 let helloWorld = "Hello world!"   //empty string leteral
```
## properties of String
```
 helloworld.loweredCased()   //"hello world!"
 helloworld.uperCased()      // "HELLO WORLD!"
 helloworld.isEmpty()       // false
```

## Multiline String 
``` swift
 let verse = """                    // should have proper indentation
     Hello world!
     this is multiline string!
    """
```

## prefix and suffix in String
```
 let password = "ios12345"                     
 password.hasPrefix("ios")        //true
 password.hasSuffix("345")       //true
```

## Drop and remove
```
var name = "Tom Dick and Harry"

name.dropFirst()        //output: "om Dick and Harry"
                        //it will remove and return first character , 
                        //but not modify original                   

name.dropLast()         //output: "Tom Dick and Harr"
                        // it will remove and return last character ,
                       // but not modify original string 'name'

name.dropFirst(3)       //output: " Dick and Harry"
                        // it will drop first 3 and return remaining string ,
                        // but oringinal string not affected .
                        
name.dropLast(5)         //output: "Tom Dick and "
                        // it will drop last 5 and return remainig string ,
                       //but original string not affected.
                       
name                  //"Tom Dick and Harry"

name.removeFirst()          //output: "T"
                            // it will drop and return first char
                           //it will modify original string 'name'
                           
name.removeLast()           //output: "y"
                           //it will drop and return last char
                          //it will modify original string.
                          
name                    //after above operation , output: "om Dick and Harr"
```

## string concatenation
```
var first = "Hello"
var second = "world"
print(first+" "+second)
```

## string interapolation
```
print("6 times 7 is \(6*7)")
```

## working with characters
```
for char in "Hello" {
    print(char)
}
let helloChars: [Character] = ["H","e","l","l","o"]

String(helloChars)
```

## useful character properties
```
let a = "A" as Character                //"A"
let pi = "π" as Character               //"π"
a.isASCII                               //true
pi.isASCII                              //false

a.asciiValue                            //65
pi.asciiValue                           //nil

let five = "5" as Character            //"5"
let half = "½" as Character            //"½"
five.isNumber                         //true
half.isNumber                         //true

five.isWholeNumber                  //true
five.wholeNumberValue               //5
half.isWholeNumber                  //false
half.wholeNumberValue               //nil

a.isLetter                         //true
let smiley = "🙂" as Character     //"🙂"
smiley.isSymbol                    //true
smiley.isLetter                   //false

let plus = "+" as Character     //"+"
plus.isSymbol                   //true
plus.isLetter                   //false
plus.isMathSymbol               //true
smiley.isMathSymbol             //false

let dollar = "$" as Character   //"$"
dollar.isCurrencySymbol         //true

let qmark = "?" as Character    //"?"
qmark.isPunctuation             //true

let b = "b" as Character        //"b"
let z = "Z" as Character        //"Z"
b.isLowercase                   //true
z.isUppercase                   //true
b.uppercased()                  //"B"
z.lowercased()                  //"z"
```

## String Indices
```
let hello = "hello"                          //"hello"
let startIndex = hello.startIndex           //0
let endIndex = hello.endIndex              // 5
hello[startIndex]                          // "h"
hello[hello.index(after: startIndex)]     // "e"
hello[hello.index(before: endIndex)]      // "o"

hello[hello.index(startIndex, offsetBy: 1)]  //"e"
hello[hello.index(endIndex, offsetBy: -4)]   //"e"
hello[hello.index(startIndex, offsetBy: 4, limitedBy: endIndex) ?? startIndex]  //"o"

for index in hello.indices {
    print("the hello world letter by letter \(hello[index])")  
}

//output:
the hello world letter by letter h
the hello world letter by letter e
the hello world letter by letter l
the hello world letter by letter l
the hello world letter by letter o

```

## substring
```
let greetings = "Hello , world !"                // "Hello , world !"

let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<index]              // "Hello"

//Convert the result to a string for long-term storage .
let newString = String(beginning)               // "Hello"

let endingIndex1 = greetings.index(greetings.startIndex, offsetBy: 7)
let ending1 = greetings[endingIndex1...]       // " world !"

let endingIndex2 = greetings.index(greetings.endIndex, offsetBy: -1)
let ending2 = greeting[endingIndex1..<endingIndex2]  //" world "

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
```


