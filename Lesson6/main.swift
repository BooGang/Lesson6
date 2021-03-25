//
//  main.swift
//  Lesson6
//
//  Created by Air on 24.03.2021.
//

import Foundation


struct Accounting {
    var name: String
    var numbers: Int
}

extension Accounting: CustomStringConvertible {
    var description : String {
        return "Name: \(name) and Number: \(numbers)"
    }
}

struct queue <T> {
    private var elements: [T] = []
    
    public var isEmpty: Bool {
        return elements.count == 0
    }
    
    mutating func secondqueue(element: T) {
        elements.append(element)
    }
    mutating func theirdqueue()->T {
        return elements.removeLast()
    }

    public var head: T? {
        if isEmpty {
            print("The elemnets aren't found. Array is empty.")
            return nil
        } else {
            print("Last element is \(elements.last!)")
            return elements.last
        }
    }
    
    public var front: T? {
        if isEmpty {
            print("The elemnets aren't found. Array is empty.")
            return nil
        } else {
            print("First element is \(elements.first!)")
            return elements.first
        }
    }
}
extension queue {
    func Filter(predicate:(T) -> Bool) -> [T] {
        var result = [T]()
        for i in elements {
            if predicate(i) {
                result.append(i)
            }
        }
        return result
    }
}

var result = queue<Accounting>()
result.secondqueue(element: .init(name: "Bogdan", numbers: 8))
result.secondqueue(element: .init(name: "Andrei", numbers: 4))
result.secondqueue(element: .init(name: "Alex", numbers: 2))
result.secondqueue(element: .init(name: "Masha", numbers: 1))
result.secondqueue(element: .init(name: "Oleg", numbers: 1))
result.secondqueue(element: .init(name: "Lisa", numbers: 1))

result.head
result.front

let personResult = result.Filter(predicate: {$0.numbers == 1})
print(personResult)



