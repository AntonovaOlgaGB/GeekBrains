import Foundation

//MARK:- 1
func isEven (inputNumber: Int ) -> Bool {
    if inputNumber % 2 == 0 // Есть ли другой способ узнать четное ли число?
    { return true }
    else { return false }
}
let x = 78

print(isEven(inputNumber: x))

//MARK:- 2
func isDivisible (inputNumber: Int ) -> Bool {
    if inputNumber % 3 == 0 // Чем отличаются задания?
    { return true }
    else { return false }
}

let y = 90

print(isDivisible(inputNumber: y))

//MARK:- 3
var array = [Int]()
for i in 1...100 {
    array.append(i)
}

//MARK:- 4

var index = 0
while index < array.count {
    if isEven (inputNumber:array[index]) == true || isDivisible (inputNumber:array[index]) == false
    { array.remove(at: index)
        index -= 1 }
    index += 1
}

print(array)

//MARK:- 5
func addNewFibo (inputArray: inout [Decimal]) -> Void {
    if inputArray.count >= 2 {
        inputArray.append(inputArray.last! + inputArray[inputArray.endIndex - 1])
    }
    else { inputArray.append(1) }
    return
        
    }

var arrayFibo = [Decimal]()

for _ in 1...100 {
    addNewFibo(inputArray: &arrayFibo)
}

print(arrayFibo)



