//
//  119.swift - Pascal's Triangle II
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/pascals-triangle-ii/
//  Category : Array, Dynamic Programming
//
//  Created by Thomas Heinis on 01/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

/* Given an integer rowIndex, return the rowIndexth
  (0-indexed) row of the Pascal's triangle. */

enum P119 {
  class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
      if rowIndex == 0 {
        return [1]
      }

      var row = [Int](repeating: 1, count: rowIndex + 1)

      for i in 1 ... rowIndex {
        row[i] = row[i - 1] * (rowIndex - i + 1) / i
      }

      return row
    }
  }

  static func getSolution() {
    let rowIndex = 3
    print(Solution().getRow(rowIndex))
  }
}
