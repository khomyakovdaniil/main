import UIKit



func sort(numbers: [Int]) -> [Int]
{
    var sorting = numbers
    var counter = 0 // FIXME: Implement without sorted (1.break+counter 2.break )
    while counter < numbers.count {
        for i in 0 ..< (sorting.count-1) {
                if sorting[i]>sorting[i+1]{
                    var temp = sorting[i]
                    sorting[i] = sorting[i+1]
                    sorting[i+1] = temp
                    counter = 0
                }
                else {
                    counter+=1
                }
        }
    }
   return sorting

}

var input = [11, 22, 5, 6, 8, 4, 1, 2, 3]

var output = sort(numbers: input)
print(output)
