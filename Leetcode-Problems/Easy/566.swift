//
//  566.swift : Reshape the Matrix
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 19/10/2022.
//

struct P566 {
  class Solution {
    func matrixReshape(_ mat: [[Int]], _ rows: Int, _ cols: Int) -> [[Int]] {
      let initialRows = mat.count
      let initialCols = mat[0].count
      let nbOfElements = initialRows * initialCols

      if rows * cols != nbOfElements {
        return mat
      }

      var reshaped: [[Int]] = Array(repeating: Array(repeating: 0, count: cols), count: rows)

      for i in 0 ..< nbOfElements {
        reshaped[i / cols][i % cols] = mat[i / initialCols][i % initialCols]
      }

      return reshaped
    }
  }
}
