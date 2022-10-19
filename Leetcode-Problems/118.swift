//
//  118.swift : Pascal’s Triangle
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 19/10/2022.
//

class P118: Solution {
  func generate(_ numRows: Int) -> [[Int]] {
    guard numRows != 0 else { return [] }
    guard numRows != 1 else { return [[1]] }
    guard numRows != 2 else { return [[1],[1,1]] }

    var result: [[Int]] = [[1],[1,1]]

    for i in 2..<numRows {
      var row: [Int] = Array(repeating: 0, count: i + 1)
      row[0] = 1
      row[i] = 1

      for j in 1 ..< i {
        row[j] = result[i-1][j-1] + result[i-1][j]
      }

      result.append(row)
    }

    return result
  }
}
