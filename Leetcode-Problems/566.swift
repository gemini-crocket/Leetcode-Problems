//
//  566.swift : Reshape the Matrix
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 19/10/2022.
//

class P566: Solution {
  func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
    let initialRows = mat.count
    let initialCols = mat[0].count
    let nbOfElements = initialRows * initialCols

    if r * c != nbOfElements {
      return mat
    }

    var reshaped: [[Int]] = Array(repeating: Array(repeating: 0, count: c), count: r)

    for i in 0 ..< nbOfElements {
      reshaped[i / c][i % c] = mat[i / initialCols][i % initialCols]
    }

    return reshaped
  }
}
