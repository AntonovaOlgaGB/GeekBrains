import Foundation

//MARK:- 1
func isEven (inputNumber: Int ) -> Bool {
    if inputNumber % 2 == 0 // return a % 2 == 0 - достаточно, тк bool
    { return true }
    else { return false }
}
let x = 78

print(isEven(inputNumber: x))


//MARK:- 2
func isDivisible (inputNumber: Int ) -> Bool { // (a: Int, b: Int)
    if inputNumber % 3 == 0 // return a % b == 0
    { return true }
    else { return false }
}

let y = 90

print(isDivisible(inputNumber: y))

//MARK:- 3
var array = [Int]() // var array = Array(0...100)
for i in 1...100 {
    array.append(i)
} 

//MARK:- 4

var index = 0       // let array = array.filter {$0 % 2 != 0 && $0 % 3 == 0 }
while index < array.count {
    if isEven (inputNumber:array[index]) == true || isDivisible (inputNumber:array[index]) == false // array[index] % 2 == 0 || array[index] % 3 != 0
    { array.remove(at: index)
        index -= 1 }
    index += 1
}

print(array)

//MARK:- 5
func addNewFibo (inputArray: inout [Decimal]) -> Void { // func fibo(n:Int) -> [Int] и все в части функции
    if inputArray.count >= 2 {
        inputArray.append(inputArray.last! + inputArray[inputArray.endIndex - 1])
    }
    else { inputArray.append(1) }
    return
        
    }

var arrayFibo = [Decimal]() // = [0,1]

for _ in 1...100 {
    addNewFibo(inputArray: &arrayFibo) // array.append(array[i-2] + array[i - 1]
}

print(arrayFibo)

//MARK:- 6
// 100 простых чисел 2 3 4 5 6 7 8 9 10 11 12 13 14 ... n
var set: Set<Int> = Set(2...100)
var index2 = 2

for value in set {
    while index2 * value < 100 {
        set.remove(index2 * value)
        index2 += 1
    }
    index2 = 2
}
print(set.sorted(by: <))
