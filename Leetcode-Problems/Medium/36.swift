//
//  36.swift - Valid Sudoku
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/valid-sudoku/
//  Category : Array, Hash Table, Matrix
//
//  Created by Thomas Heinis on 20/10/2022, last updated on 23/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P36 {
  class Solution {
    func isValidSudoku(_ board: [[String]]) -> Bool {
      for i in 0 ..< 9 {
        let filteredRow = board[i].filter { $0 != "." }

        if filteredRow.count != Set(filteredRow).count {
          return false
        }

        let filteredCol = board.map { $0[i] }.filter { $0 != "." }

        if filteredCol.count != Set(filteredCol).count {
          return false
        }

        let blockFirstRow = 3 * (i / 3)
        let blockFirstCol = 3 * (i % 3)
        let rowRange = blockFirstRow ..< blockFirstRow + 3
        let colRange = blockFirstCol ..< blockFirstCol + 3
        let filteredBlock = board[rowRange]
          .flatMap { $0[colRange] }
          .filter { $0 != "." }

        if filteredBlock.count != Set(filteredBlock).count {
          return false
        }
      }
      return true
    }
  }

  static func getSolution() {
    let board = [
      ["5", "3", ".", ".", "7", ".", ".", ".", "."],
      ["6", ".", ".", "1", "9", "5", ".", ".", "."],
      [".", "9", "8", ".", ".", ".", ".", "6", "."],
      ["8", ".", ".", ".", "6", ".", ".", ".", "3"],
      ["4", ".", ".", "8", ".", "3", ".", ".", "1"],
      ["7", ".", ".", ".", "2", ".", ".", ".", "6"],
      [".", "6", ".", ".", ".", ".", "2", "8", "."],
      [".", ".", ".", "4", "1", "9", ".", ".", "5"],
      [".", ".", ".", ".", "8", ".", ".", "7", "9"]
    ]
    print(Solution().isValidSudoku(board))
  }
}
