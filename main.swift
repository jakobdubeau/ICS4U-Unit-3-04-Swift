import Foundation

enum MyError: Error {
    case invalidInteger(String)
}

let aStack: MrCoxallStack = MrCoxallStack()
let addedNewNumber: String = "Added"
let popNumber: String = "Popped "
let peekNumber: String = "The top value of the stack is "
let newStack: String = "\nNew Stack"
let failedPush: String = "Cannot add to stack, it is not an integer"

print("Initial stack")
aStack.showStack()

/*
* Push
*/
print("\nPush\n")

do {
    print("Enter the first number: ")
    if let number: Int = Int(readLine()!) {
        aStack.push(pushNumber: number)
        print(addedNewNumber, number)
    } else {
       throw MyError.invalidInteger("Error")
    }
    print(newStack)
    aStack.showStack()
} catch {
    print(failedPush)
}

do {
    print("Enter the second number: ")
    if let number: Int = Int(readLine()!) {
        aStack.push(pushNumber: number)
        print(addedNewNumber, number)
    } else {
        throw MyError.invalidInteger("Error")
    }
    print(newStack)
    aStack.showStack()
} catch {
    print(failedPush)
}

/*
* Peek
*/
print("\nPeek\n")

let peekedNumber: Int = aStack.peek()
if peekedNumber != -1 {
    print(peekNumber, peekedNumber)
}

/*
* Pops
*/
print("\nPop\n")

let poppedNumber: Int = aStack.pop()
if poppedNumber != -1 {
    print(popNumber, poppedNumber)
    print(newStack)
    aStack.showStack()
}
print("\nDone.")
