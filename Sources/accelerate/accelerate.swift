//===----------------------------------------------------------------------===//
//
// Autor: Rafael Fernando Garcia Sagastume.
// Escuintla, Guatemala
//
// Accelerate Linux, vectores wrapper
//
// Copyright © Rafael Fernando Garcia Sagastume.
//===----------------------------------------------------------------------===//


#if os(Linux)


typealias vDSP_Length = UInt
typealias vDSP_Stride = Int


func vDSP_vsmulD(_ __ArrayVector: UnsafePointer<Double>, _ __IncrementArray: vDSP_Stride, _ __Scalar: UnsafePointer<Double>, _ __C: UnsafeMutablePointer<Double>, _ __IC: vDSP_Stride, _ __N: vDSP_Length) {
    var A_Offset = 0
    var C_Offset = 0
    for _ in 0..<__N {
        __C[C_Offset] = __ArrayVector[A_Offset] * __Scalar.pointee
        A_Offset += __IncrementArray
        C_Offset += __IC
    }
}


#endif
