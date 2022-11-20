//
//  1572.swift - Matrix Diagonal Sum
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/matrix-diagonal-sum/
//  Category : Array, Matrix
//
//  Created by Thomas Heinis on 20/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P1572 {
  class Solution {
    func diagonalSum(_ mat: [[Int]]) -> Int {
      var sum = 0
      var oppositeIndex = mat.count - 1

      for index in 0 ... oppositeIndex {
        if index == oppositeIndex {
          sum += mat[index][index]
          oppositeIndex -= 1
        } else {
          sum += mat[index][index] + mat[index][oppositeIndex]
          oppositeIndex -= 1
        }
      }

      return sum
    }
  }

  static func getSolution() {
    let mat = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]
    ]
    print(Solution().diagonalSum(mat))
  }
}
