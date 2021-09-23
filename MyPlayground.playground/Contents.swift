import UIKit



func sortNumbers(numbers: [Int]) -> [Int]
{
    var sorting = numbers
    var counter = 0 // FIXME: Implement without sorted (1.break+counter 2.break )
    
    while true {
        for i in 0 ..< (sorting.count-1) {
            if sorting[i] > sorting[i+1]{
                var temp = sorting[i]
                sorting[i] = sorting[i+1]
                sorting[i+1] = temp
            } else {
                counter+=1
            }
            if (i == numbers.count-2)&&(counter<numbers.count-1) {
                counter = 0
            } //Sets counter to zero at the end of cycle
        }
        if counter == numbers.count-1 {
            break
        } //Checks if all the numbers are sorted
    }
    return sorting
}

var input = [17, 19, 13, 11, 22, 5, 6, 8, 4, 1, 2, 3, 40, 7, 162, 15] //Sample input
var output = sortNumbers(numbers: input)

print(output)

