# Utility Toolbox

## API Manager

**GET**
```swift
let manager = APIManager()
let url = "http://localhost:8000/users"

func successCompletion() { // Success }
func failureCompletion() { // Failure }

func getUsers() async throws -> [User] {
   let users: [User] = manager.get(url: url, 
                                   successCompletion: successCompletion, 
                                   failureCompletion: failureCompletion)
   return users
}
```

**POST**
```swift
let manager = APIManager()
let url = "http://localhost:8000/api/auth/signup/"

func successCompletion() { // Success }
func failureCompletion() { // Failure }

func postUser() async throws -> User {
   let newUser = User(name: String)
   let user: User = manager.post(url: url, 
                                 value: newUser
                                 successCompletion: successCompletion, 
                                 failureCompletion: failureCompletion)
   return user
}
```

**PUT**
```swift
let manager = APIManager()
let url = "http://localhost:8000/user/"

func successCompletion() { // Success }
func failureCompletion() { // Failure }

func putUser(user: User) async throws -> User {
   let user: User = manager.put(url: url, 
                                value: user
                                successCompletion: successCompletion, 
                                failureCompletion: failureCompletion)
   return user
}
```

**DELETE**
```swift
let manager = APIManager()
let url = "http://localhost:8000/user/"

func successCompletion() { // Success }
func failureCompletion() { // Failure }

func deleteUser(userID: Int) async throws -> User {
   let user: User = manager.delete(url: url, 
                                   id: userID,
                                   successCompletion: successCompletion, 
                                   failureCompletion: failureCompletion)
   return user
}
```

## Save Manager

**Fetch saves**
```swift
let manager = SaveManager()
let countries: [CountryEntity]

func fetchCountries() {
    guard let fetchedSaves: [CountryEntity] = try? saveManager.fetchedObjects(entityName: "CountryEntity") else { return }
    countries = fetchedSaves
}
```

**Save**
```swift
let manager = SaveManager()

func save() { try? manager.save() }
```

**Delete save**
```swift
let manager = SaveManager()
let countries: [CountryEntity]

func deleteCountry(_ country: CountryEntity) {
    withAnimation {
        saveManager.delete(country)
        fetchCountries()
    }
}
```

**Delete all save**
```swift
let manager = SaveManager()
let countries: [CountryEntity]

manager.deleteAll(objects: countries)
```

## Async Manager

```swift
func content() async throws { // Async await content }

func completion() { // Completion }

AsyncManager.loadContent(content: content, completion: completion)
```

## Payment Manager

```swift
var paymentRequest: PKPaymentRequest {
    let item = PKPaymentSummaryItem(label: "Balloon", amount: NSDecimalNumber(value: 3.14), type: .final)
    let request = PKPaymentRequest()
    request.paymentSummaryItems = [item]
    request.merchantIdentifier = "merchant.com.YOURDOMAIN.YOURAPPNAME"
    request.merchantCapabilities = .capability3DS
    request.countryCode = "US"
    request.currencyCode = "USD"
    request.requiredShippingContactFields = [.phoneNumber, .emailAddress]
    request.supportedNetworks = [.visa, ]
}

struct MyPaymentView: View {
    var paymentManager = PaymentManager()
    var body: some View {
        PayWithApplePayButton {
            paymentManager.startPayment(paymentRequest: paymentRequest) { result in
                result ? print("Success") : print("Failure")
            }
        }
    }
}
```

## Bundle Manager

```swift
let manager = BundleManager()
let countries: [Country] = try? manager.decodeJSON("countries", fileExtension: "json")
```

## Canvas

```swift
struct MyCanvasView: View {
   @StateObject var canvasManager = CanvasManager(lineColor: .blue, lineWidth: 10.0) 
   var body: some View {
      CanvasBoard(manager: canvasManager)
        .frame(width: 300, height: 300)
   }
}
```

## FX Animation
```swift
struct MyFXAnimationView: View {
   let frames: [String] = ["sparks0", "sparks1", "sparks2"]
   var body: some View {
      FXAnimation(frames: frames, isRepeatingForever: true)
        .scaledToFit()
   }
}
```

## SF Symbols

```swift
struct SFSymbolImageView: View {
   var body: some View {
      Image(sfSymbol: SFMathsSymbol.multiply)
   }
}
```

## Custom Font

```swift
struct MyCustomFontText: View {
   var body: some View {
      Text("Hello World")
        .font(.custom(systemName: .americanTypewriter, size: 15))
   }
}
```

## Carousel

```swift
struct Student: Identifiable {
    var id = UUID()
    var name: String
}

var students: [Student] = [
    Student(name: "John"),
    Student(name: "Mary"),
    Student(name: "Harry"),
    Student(name: "Kate"),
    Student(name: "Patrick"),
]

struct MyCarouselView: View {
    @State var index: Int = 0
    var body: some View {
        Carousel(index: $index, items: students) { student in
            RoundedRectangle(cornerRadius: 15)
                .overlay(
                    Text(student.name)
                        .foregroundColor(.white)
                )
        }
    }
}
```

## Shapes

```swift
struct MyShapesView: View {
    var body: some View {
       VStack {
          Diamond()
          Heart()
          Hexagon()
          Star(corners: 5, smoothness: 0.45)
          Triangle()
       }
    }
}
```

## MapKit

**World capital**
```swift
struct MyMapView: View {
    @State var capital = MKCoordinateRegion(capital: .amsterdam)
    var body: some View {
        Map(coordinateRegion: $capital)
    }
}
```

## Extensions

### **Array & Collections**

**Default value subscript**
```swift
let values: [Int] = []
print(values[0, default: 99])
// 99
```

**Safe subscript**
```swift
let values: [Int] = []
print(values[safe: 0])
// nil
```

**Split an array**
```swift
func splitted(into size: Int) -> [[Element]]
```
```swift
let values: [Int] = [0, 1, 2, 3, 4, 5]
let splittedValues = values.splitted(into: 2)
print(splittedValues)
// [[0, 1], [2, 3], [4, 5]]
```

**Split**
```swift
func split -> (firstPart: [Element], lastPart: [Element])
```
```swift
var values: [Int] = [0, 1, 2, 3, 4, 5]
let splittedValues = values.split()
print(splittedValues.firstPart)
print(splittedValues.lastPart)
// [0, 1, 2]
// [3, 4, 5]
```

**Swap**
```swift
mutating func swap(between valueA: Int, and valueB: Int)
```
```swift
var values: [Int] = [0, 11, 2, 3, 44, 5]
values.swap(between: 1, and: 4)
print(values)
// [0, 44, 2, 3, 11, 5]
```

**Remove a random element**
```swift
mutating func removeRandomElement()
```

**Prepend**
```swift
mutating func prepend(_ element: Element)
```
```swift
var values: [Int] = [0, 1, 2, 3, 4, 5]
values.prepend(99)
print(values)
// [99, 0, 1, 2, 3, 4, 5]
```

**Replace all nil**
```swift
mutating func replaceAllNil<T>(by element: T) where Element == Optional<T>
```
```swift
var values = [75, nil, 40, 90, nil, 10]
values.replaceAllNil(by: 100)
print(values)
// [75, 100, 40, 90, 100, 10]
```

**Max index**
```swift
func maxIndex() -> Int?
```
```swift
let values: [Int] = [0, 1, 2, 99, 4, 5]
let maxIndex = values.maxIndex()
print(maxIndex)
// Optional(3)
```

**Remove element**
```swift
mutating func remove(_ element: Element)
```
```swift
var names: [String] = ["Ash", "Brock", "Misty"]
names.remove("Brock")
print(names)
// ["Ash", "Misty"]
```

**Contains at least**
```swift
func containsAtLeast(_ requirement: [Element]) -> Bool
```
```swift
let names: [String] = ["Ash", "Brock", "Misty"]
print(names.containsAtLeast(["Misty", "Misty", "Brock"]))
// false
```

**Contains elements**
```swift
func contains(_ elements: [Element]) -> Bool
```
```swift
Example:
let names: [String] = ["Ash", "Brock", "Misty"]
print(names.contains(["Ash", "Pikachu"]))
// false
```

**With XOR operators**
```swift
func withXOROperators() -> UInt32?
```
Each category of bitmask represents an enum value of a UInt32.

The object could be 0x1 << 0, the player 0x1 << 1 and the npc 0x1 << 2
```swift
var categories: [BitmaskCategory] = [.object, .player, .npc]
let categoryValue = categories.withXOROperators()
// The result is "object | player | npc" and is an UInt32.
```

**Element frequencie**
```swift
func elementFrequencies() -> [Element : Int]
```
```swift
let values: [Int] = [1, 2, 2, 2, 3, 3, 4, 4]
let frequencies = values.elementFrequencies()
print(frequencies)
// [[1: 1], [2: 3], [3: 2], [4: 2]]
```
**Random element with odds**
```swift
func randomElementWithOdds() -> Element?
```
```swift
// Need to conform the method to Probability
struct Student: Probability {
  let name: String
  var odds: Int
}

let students: [Student] = [
  Student(name: "Jean", odds: 10),
  Student(name: "Paul", odds: 30),
  Student(name: "Jack", odds: 20),
  Student(name: "Julie", odds: 15),
  Student(name: "Gerard", odds: 25),
]

print(students.randomElementWithOdds)
// This will print a random student depending on its odd
```
