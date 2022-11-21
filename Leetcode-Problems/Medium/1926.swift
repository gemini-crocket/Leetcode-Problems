//
//  1926.swift - Nearest Exit from Entrance in Maze
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/nearest-exit-from-entrance-in-maze/
//  Category : Array, Breadth-First Search, Matrix
//
//  Created by Thomas Heinis on 21/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P1926 {
  class Solution {
    func nearestExit(_ maze: [[String]], _ entrance: [Int]) -> Int {
      let rowsCount = maze.count, colsCount = maze[0].count
      let directions = [[1, 0], [-1, 0], [0, 1], [0, -1]]
      let startRow = entrance[0], startCol = entrance[1]

      var maze = maze
      var queue: [[Int]] = [[startRow, startCol, 0]]

      maze[startRow][startCol] = "+"

      while !queue.isEmpty {
        let currentPosition = queue.removeFirst()
        let currentRow = currentPosition[0], currentCol = currentPosition[1], currentDistance = currentPosition[2]

        for direction in directions {
          let nextRow = currentRow + direction[0], nextCol = currentCol + direction[1]

          if nextRow >= 0 && nextRow < rowsCount &&
            nextCol >= 0 && nextCol < colsCount && maze[nextRow][nextCol] == "." {
            if nextRow == 0 || nextRow == rowsCount - 1 || nextCol == 0 || nextCol == colsCount - 1 {
              return currentDistance + 1
            }

            maze[nextRow][nextCol] = "+"
            queue.append([nextRow, nextCol, currentDistance + 1])
          }
        }
      }

      return -1
    }
  }

  static func getSolution() {
    let maze = [["+", "+", ".", "+"], [".", ".", ".", "+"], ["+", "+", "+", "."]], entrance = [1, 2]
    print(Solution().nearestExit(maze, entrance))
  }
}
