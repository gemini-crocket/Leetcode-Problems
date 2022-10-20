//
//  36.swift : Valid Sudoku
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 20/10/2022.
//

class P36: Solution {
  func isValidSudoku(_ board: [[Character]]) -> Bool {
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
        .flatMap { $0[colRange]}
        .filter { $0 != "." }

      if filteredBlock.count != Set(filteredBlock).count {
        return false
      }
    }
    return true
  }
}
