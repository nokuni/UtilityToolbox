# Utility Toolbox

## Extensions

### **Array & Collections**

**Default value subscript**
```swift
let values: [Int] = []
print(values[0, default: "No values"])
// "No values"
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
mutating func preprend(_ element: Element)
```
```swift
var values: [Int] = [0, 1, 2, 3, 4, 5]
values.prepend(99)
print(values)
// [99, 0, 1, 2, 3, 4, 5]
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
print(values.containsAtLeast(["Misty", "Misty", "Brock"]))
// false
```

**Contains elements**
```swift
func contains(_ elements: [Element]) -> Bool
```
```swift
Example:
let names: [String] = ["Ash", "Brock", "Misty"]
print(values.contains(["Ash", "Pikachu"]))
// false
```

**With XOR operators**
```swift
func withXOROperators() -> UInt32?
```
Each category of bitmask represents an enum value of a UInt32.
The object could be [0x1 << 0], the player [0x1 << 1] and the npc [0x1 << 2]
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
