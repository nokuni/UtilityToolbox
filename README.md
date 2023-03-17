# Utility Toolbox

## Extensions

## Array & Collections

[1] - Default value subscript

Example:
```
let values: [Int] = []
print(values[0, default: "No values"])
// "No values"
```

[2] - Safe subscript

Example:
/* let values: [Int] = [] */
/* print(values[safe: 0]) */
/* Result: nil */

[3] - Splitted - /* func splitted(into size: Int) -> [[Element]] */

Example:
/* let values: [Int] = [0, 1, 2, 3, 4, 5] */
/* let splittedValues = values.splitted(into: 2) */
/* Result: [[0, 1], [2, 3], [4, 5]] */

[4] - Swap - /* mutating func swap(between valueA: Int, and valueB: Int) */

Example:
/* var values: [Int] = [0, 11, 2, 3, 44, 5] */
/* values.swap(between: 1, and: 4) */
/* Result: [0, 44, 2, 3, 11, 5] */

[5] - Remove random element - /* mutating func removeRandomElement() */

[6] - Prepend - /* mutating func preprend(_ element: Element) */

Example:
/* var values: [Int] = [0, 1, 2, 3, 4, 5] */
/* values.prepend(99) */
/* Result: [99, 0, 1, 2, 3, 4, 5] */

[7] - Max index - /* func maxIndex() -> Int? */

Example:
/* let values: [Int] = [0, 1, 2, 99, 4, 5] */
/* let maxIndex = values.maxIndex() */
/* Result: Optional(3) */

[8] - Remove element - /* mutating func remove(_ element: Element) */

Example:
/* var names: [String] = ["Ash", "Brock, "Misty"] */
/* names.remove("Brock") */
/* Result: ["Ash", "Misty"] */

[9] - Contains at least - /* func containsAtLeast(_ requirement: [Element]) -> Bool */

Example:
/* var names: [String] = ["Ash", "Brock, "Misty"] */
/* values.containsAtLeast(["Misty", "Misty", "Brock"]) */
/* Result: false */

[10] - Contains elements - /* func contains(_ elements: [Element]) -> Bool */

Example:
/* var names: [String] = ["Ash", "Brock, "Misty"] */
/* values.contains(["Ash", "Pikachu"]) */
/* Result: false */

[11] - With XOR operators - /* func withXOROperators() -> UInt32? */

Example:
Each category of bitmask represents an enum value of a UInt32.
The object could be [0x1 << 0], the player [0x1 << 1] and the npc [0x1 << 2]
/* var categories: [BitmaskCategory] = [.object, .player, .npc] */
/* let categoryValue = categories.withXOROperators() */
/* Result: object | player | npc */

[12] - Element frequencies - /* func elementFrequencies() -> [Element : Int] */

Example:
/* let values: [Int] = [1, 2, 2, 2, 3, 3, 4, 4] */
/* let frequencies = values.elementFrequencies() */
/* Result: [[1: 1], [2: 3], [3: 2], [4: 2]] */
