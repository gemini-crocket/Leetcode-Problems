//
//  1706.swift - Where Will the Ball Fall
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/where-will-the-ball-fall/
//  Category : Array, Dynamic Programming, Depth-First Search, Matrix, Simulation
//
//  Created by Thomas Heinis on 04/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P1706 {
  class Solution {
    func findBall(_ grid: [[Int]]) -> [Int] {
      var result: [Int] = []

      for i in 0 ..< grid[0].count {
        result.append(findBallDropColumn(0, i, grid))
      }

      return result
    }

    private func findBallDropColumn(_ row: Int, _ column: Int, _ grid: [[Int]]) -> Int {
      if row == grid.count {
        return column
      }

      let nextColumn = column + grid[row][column]

      if nextColumn < 0 || nextColumn > grid[0].count - 1 || grid[row][column] != grid[row][nextColumn] {
        return -1
      }

      return findBallDropColumn(row + 1, nextColumn, grid)
    }
  }

  static func getSolution() {
    let grid = [
      [1, 1, 1, 1, 1, 1],
      [-1, -1, -1, -1, -1, -1],
      [1, 1, 1, 1, 1, 1],
      [-1, -1, -1, -1, -1, -1]
    ]
    print(Solution().findBall(grid))
  }
}
