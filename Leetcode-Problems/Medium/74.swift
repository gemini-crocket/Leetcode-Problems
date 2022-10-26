//
//  74.swift : Search a 2D Matrix
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 20/10/2022.
//

struct P74 {
  class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
      guard !matrix.isEmpty else { return false }

      let numberOfRows = matrix.count
      let numberOfCols = matrix[0].count

      var lowerLimit = 0
      var upperLimit = numberOfRows * numberOfCols - 1

      while lowerLimit <= upperLimit {
        let middle = lowerLimit + (upperLimit - lowerLimit) / 2

        let candidate = matrix[middle / numberOfCols][middle % numberOfCols]
        guard candidate != target else { return true }

        if candidate < target {
          lowerLimit = middle + 1
        } else {
          upperLimit = middle - 1
        }
      }

      return false
    }
  }
}
