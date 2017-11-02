// (from: https://github.com/typelift/Swiftz)

import protocol Swiftz.Semigroup
import func Swiftz.sconcat
import struct Swiftz.Min

import protocol Swiftz.Monoid
import func Swiftz.mconcat
import struct Swiftz.Sum

import struct Swiftz.Product

func monoidPrac(){
    print("======== Monoid Practice ======")
    let xs = [1, 2, 0, 3, 4]

    //: The least element of a list can be had with the Min Semigroup.
    let smallestElement = sconcat(Min(2), xs.map { Min($0) }).value() // 0
    print("smallestElement:", smallestElement)

    //: Or the sum of a list with the Sum Monoid.
    let sum = mconcat(t: xs.map { Sum($0) }).value() // 10
    print("sum:", sum)

    //: Or the product of a list with the Product Monoid.
    let product = mconcat(t: xs.map { Product($0) }).value() // 0
    print("product:", product)
}