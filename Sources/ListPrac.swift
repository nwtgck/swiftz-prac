// (from: https://github.com/typelift/Swiftz)

import struct Swiftz.List
import struct Swiftz.Function
import Swiftz
import Swiftx
import Operadics


// List practice
func listPrac(){
    print("======== List Practice ======")

    //: Cycles a finite list of numbers into an infinite list.
    let finite : List<UInt> = [1, 2, 3, 4, 5]
    print("finite:", finite)
    let infiniteCycle = finite.cycle()
    print("infiniteCycle:", infiniteCycle)

    //: Lists also support the standard map, filter, and reduce operators.
    let l : List<Int> = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

    let twoToEleven = l.map{$0 + 1} // [2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
    print("twoToEleven:", twoToEleven)

    let even = l.filter({$0==0} • {$0 % 2}) // [2, 4, 6, 8, 10]
    print("even:", even)
    let sum = l.reduce(curry(+), initial: 0) // 55
    print("sum:", sum)

    //: Plus a few more.
    let partialSums = l.scanl(curry(+), initial: 0) // [0, 1, 3, 6, 10, 15, 21, 28, 36, 45, 55]
    print("partialSums:", partialSums)
    let firstHalf = l.take(5) // [1, 2, 3, 4, 5]
    let lastHalf = l.drop(5) // [6, 7, 8, 9, 10]
    print("firstHalf:", firstHalf)
    print("lastHalf:", lastHalf)
}