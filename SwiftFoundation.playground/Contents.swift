import UIKit

// String
var userName: String = "larry_Cuneo"  // mutable - Can be changed
let email: String = "LarryCuneo@HotMail.Com"   // immutable - Cannot be changed
var firstName: String = "Larry"

// Assigning the Variable to a new Variable
userName = "Cool_Larry"

// String Properties
// String UpperCase
firstName = firstName.uppercased()
// String LowerCase
firstName = firstName.lowercased()
// String Append
firstName.append(" Cuneo")
// String Count
firstName.count
// String isEmpty
firstName.isEmpty
firstName = ""
firstName.isEmpty


// Numberic: Integers Float and Double
var age: Int = 45
var sumNumber: Double = 49.023

// Add +
age + 10
// Subract -
sumNumber - 15.013
// Divide /
age/5
// Multiply *
age*10
// Modulus %
age%6

// Booleans
var nativeIsAmerica: Bool = true

// Conversion
var double = 1.45
double = 1/3
var ageInString: String = String(double)
var doubleToString: Double = Double(ageInString)!

// Error Conversion
Int(firstName)
Double(firstName)


print(ageInString)

// Array
var multiDataTypeArray: [Any] = [
    "Willy Nelson",
    "GreenDay",
    8,
    false,
    0.43453783748
]

var stringArray: [String] = ["Willy Nelson", "GreenDay"]
var intArray: [Int] = [1,2,4,5,6]
var doubleArray: [Double] = [1.3423424,1.123123213]
// replace elements
multiDataTypeArray[3] = 45
stringArray[1] = "Star"
print(multiDataTypeArray)
print(stringArray)
// Call Array index
multiDataTypeArray[4]
multiDataTypeArray.append("Larry")
multiDataTypeArray.count
multiDataTypeArray.first
multiDataTypeArray.last
multiDataTypeArray.isEmpty
multiDataTypeArray.removeAll()
multiDataTypeArray.isEmpty

print(multiDataTypeArray)

// Sets
var newSet: Set = ["Willy Nelson", "GreenDay", "GreenDay", "Linkin Park", "BTS", "Willy Nelson"]
var newArray: [String] = ["Willy Nelson", "GreenDay", "GreenDay", "linkin Park", "BTS", "Willy Nelson"]
print("Set", newSet)
print("Array", newArray)

newSet.count
newSet.first

// Dictionaries
// {firstName: 'John', lastName: 'Doe', age: 50, eyeColor: 'blue'}
var personalInfo: [String: Any] = [
    "firstName": "John",
    "lastName": "Doe",
    "age": 50,
    "eyeColor": "blue",
    "isHuman": true,
    "testScore": 94.589
]


var personalDictInfo: [String: Any] =  [
    "hdiqwd98h293du": [
    "firstName": "John",
    "lastName": "Doe",
    "age": 50,
    "eyeColor": "blue",
    "isHuman": true,
    "detailsInfo": [
        "height": "6 `11",
        "weight": "190 lbs",
        "hasTatoo": true,
        "region": [
            "country": "United States of America",
            "continent": "North America"
        ]
    ]
],
    "2891nxw8chq9w8chqwi": [
    "firstName": "John",
    "lastName": "Doe",
    "age": 50,
    "eyeColor": "blue",
    "isHuman": true,
    "detailsInfo": [
        "height": "6 `11",
        "weight": "190 lbs",
        "hasTatoo": true,
        "region": [
            "country": "United States of America",
            "continent": "North America"
            ]
        ]
    ]
]

personalDictInfo["firstName"] = "John"
personalDictInfo["lastName"] = "Doe"
personalDictInfo["age"] = 50
personalDictInfo["isHuman"] = true
personalDictInfo["eyeColor"] = 5674

print(personalDictInfo)


// Functions

func computeData(data: [String], data2: [Int]) -> String {
    guard !data.isEmpty else {return ""}
    return data[0]
}

var someFunction = computeData(data: stringArray, data2: intArray)

//someFunction


// If with Conditional Statements

// && = AND OPERATOR
// || = OR OPERATOR
// > = GREATER THAN
// < = LESS THAN
// >= GREATER THAN AND EQUAL
// <= LESS THAN AND EQUAL
// == Equal to (Checks if the data is matching not the type)
// === Strongly Equal (Checks Type and Data Matching)

var myAge = 80

    if myAge <= 80 {
        "USER IN EIGHTIES"
    } else  if myAge > 80 &&  myAge < 90{
        "USER IN Ninties"
    } else  if myAge < 80 || myAge > 20 {
        "USER IN 20+"
    } else {
         "User is below 20's"
    }


// Optionals

var name: String?
name?.uppercased()
name = "100"
print(name)
name?.uppercased()

var age2 = (Int(name ?? "0") ?? 0)
print(age2)

// Loops & Map

// While Loop

var number: Int = 0

while number <= 10 {
    print("Number", number)
    number += 1
}

var fruits: [String] = ["Apple", "Banana", "Kiwi", "Oranges", "Grapes", "Cherries"]

// For Loop

for fruit in fruits {
    print("Fruit Name", fruit, index)
}

for (index, fruit) in fruits.enumerated(){
    print("Fruit Name and Index", fruit, index)
}

// Map

fruits.map { fruit in
    print("Fruit Name Mapped", fruit)
}

