import UIKit

var greeting = "Hello, playground"

func sort(numbers: [Int]) -> [Int]
{
    var sorting = numbers
    var sorted = false // FIXME: Implement without sorted (1.break+counter 2.break )
    while !sorted {
        sorted = true
        for i in 0 ..< (sorting.count-1) {
                if sorting[i]>sorting[i+1]{
                    sorted = false
                    var temp = sorting[i]
                    sorting[i] = sorting[i+1]
                    sorting[i+1] = temp
                }
        }
    }
   return sorting

}

var input = [1, 2, 3]

var output = sort(numbers: input)
print(output)
