// Sorting in Swift
// Source: http://waynewbishop.com/swift/sorting-algorithms

import Foundation

//a simple array of unsorted integers
var numberList : Array<Int> = [8, 2, 10, 9, 11, 1, 7, 3, 4]
var count = 0;

// Insertion sort
// Rank items by comparing each key in the list.
func insertionSort() {
    var x, y, key : Int
    
    for (x = 0; x < numberList.count; x++) {
        count++
        println("Count is \(count)")
        //obtain a key to be evaluated
        key = numberList[x]
        
        //iterate backwards through the sorted portion
        for (y = x; y > -1; y--) {
            
            if (key < numberList[y]) {
                
                //remove item from original position
                numberList.removeAtIndex(y + 1)
                
                //insert the number at the key position
                numberList.insert(key, atIndex: y)
                
            }
            
        } //end for
        
    }  //end for
    
}

insertionSort()

numberList = [8, 2, 10, 9, 11, 1, 7, 3, 4]
count = 0

// Bubble Sort
// Rank items from the lowest to highest by swapping groups of two items from left to right.
func bubbleSort() {
    
    var x, y, z, passes, key : Int
    
    //track collection iterations
    for x in 0..<numberList.count {
        count++
        println("Count is \(count)")
        passes = (numberList.count - 1) - x;
        
        //use shorthand "half-open" range operator
        for y in 0..<passes {
            key = numberList[y]
            
            //compare and rank values
            if (key > numberList[y + 1]) {
                z = numberList[y + 1]
                numberList[y + 1] = key
                numberList[y] = z
            }
            
        } //end for
        
    } //end for
}

bubbleSort()