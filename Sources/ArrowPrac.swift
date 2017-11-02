import struct Swiftz.Function
import Swiftz

// import Operadics

// import struct Swiftz.Either


func arrowPrac(){
    print("======== Arrow Practice ======")

    //: An Arrow is a function just like any other.  Only this time around we
    //: can treat them like a full algebraic structure and introduce a number
    //: of operators to augment them.
    // let comp = Function.arr({$0+3}) >>> Function.arr({$0*6})// • Function.arr({$0/2})
    // let both1 = comp.apply(10) // 33
    // print("both1:", both1)

    // //: An Arrow that runs both operations on its input and combines both
    // //: results into a tuple.
    // let add5AndMultiply2 = Function.arr(+5) &&& Function.arr(*2)
    // let both2 = add5AndMultiply2.apply(10) // (15, 20)

    // //: Produces an Arrow that chooses a particular function to apply
    // //: when presented with the side of an Either.
    // let divideLeftMultiplyRight = Function.arr(/2) ||| Function.arr(*2)
    // let left = divideLeftMultiplyRight.apply(.Left(4)) // 2
    // let right = divideLeftMultiplyRight.apply(.Right(7)) // 14

}