import UIKit

struct Queue<T: Numeric> {
    
    private var elements: [T] = []
    
    mutating func push (_element: T) {
        elements.append(T.self as! T)
    }
    
    mutating func pop () -> T? {
        return elements.removeFirst()
    }
    
    mutating func filter( predicate: (T) -> Bool ) -> [T] {
        var tmpElements: [T] = []
        for x in elements {
            if predicate(x) {
                tmpElements.append(x)
            }
        }
        return tmpElements
    }
    
    mutating func map( predicate: (T) -> T ) -> [T] {
        var tmpElements: [T] = []
        for x in elements {
                tmpElements.append(predicate(x))
        }
        return tmpElements
    }
    
}


