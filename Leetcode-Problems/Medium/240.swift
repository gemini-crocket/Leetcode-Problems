//
//  240.swift - Search a 2D Matrix II
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/search-a-2d-matrix-ii/
//  Category : Array, Binary Search, Divide and Conquer, Matrix
//
//  Created by Thomas Heinis on 16/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P240 {
  class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
      var row = matrix.count - 1
      var col = 0

      while row >= 0 && col < matrix[0].count {
        if matrix[row][col] > target {
          row -= 1
        } else if matrix[row][col] < target {
          col += 1
        } else {
          return true
        }
      }

      return false
    }
  }

  static func getSolution() {
    let matrix = [[1, 4, 7, 11, 15], [2, 5, 8, 12, 19], [3, 6, 9, 16, 22], [10, 13, 14, 17, 24], [18, 21, 23, 26, 30]]
    let target = 5
    print(Solution().searchMatrix(matrix, target))
  }
}
