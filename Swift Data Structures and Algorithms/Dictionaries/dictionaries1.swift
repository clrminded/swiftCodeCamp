 var myDict : [String : String] = ["Miller" : "a person that works in the corn mill",
"Programmer" : "a person who writes computer programs" ]
print(myDict)

/* ----- Ways to declare dictionary ----- */
var myDictionary1 = Dictionary<Int, String>()
var myDictionary2 = [Int:String]()
var myDictionary3:[Int:String] = [:]

/* ------ Ways to create dictionaries 
                from arrays           ----- */
				
let countryKeys = ["US", "UK", "AZ"]
let countryValues = ["United States", "United Kingdom", "Azerbaijan"]
let newDictionary = Dictionary(uniqueKeysWithValues: zip(countryKeys, countryValues))
print(newDictionary)

/* --- Accessing values in a dictionary --- */
// using optional binding
myDictionary1 = [1:"one", 2:"two", 3:"three"]
if let optValue = myDictionary1[4] {
	print(optValue)
} else {
	print("key not found")
}

// using force unwrapping
let forcedValue = myDictionary1[3]!
print(forcedValue)

for(key, value) in myDictionary1 {
	print("The value of \(key) is \(value)")
}

/* Summary:
- Dictionaries are key value pairs
- they are unorgnized, you will not know what order they will come in 
*/