//
//  79.swift - Word Search
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/word-search/
//  Category : Array, Backtracking, Matrix
//
//  Created by Thomas Heinis on 24/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P79 {
  class Solution {
    private var board: [[Character]]
    private var rowsCount: Int
    private var colsCount: Int

    init() {
      board = [[]]
      rowsCount = 0
      colsCount = 0
    }

    func exist(_ board: [[Character]], _ word: String) -> Bool {
      if !allCharacters(from: word, in: board) {
        return false
      }

      let index = 0

      self.board = board
      self.rowsCount = board.count
      self.colsCount = board[0].count

      for row in 0 ..< rowsCount {
        for col in 0 ..< colsCount where backtrack(at: (row, col), for: index, in: word) {
          return true
        }
      }
      return false
    }

    private func allCharacters(from word: String, in board: [[Character]]) -> Bool {
      let availableLetters = Set(board.flatMap { $0 })
      let remainingCharacters = Set(word).filter { !availableLetters.contains($0) }

      return remainingCharacters.isEmpty
    }

    private func backtrack(at position: (row: Int, col: Int), for index: Int, in word: String) -> Bool {
      if isBottomCase(index, in: word) {
        return true
      }

      if isBoundary(position) || isInvalidCharacter(at: position, for: index, in: word) {
        return false
      }

      board[position.row][position.col] = "#"
      let dfs = dfs(at: position, for: index, in: word)
      board[position.row][position.col] = Array(word)[index]
      return dfs
    }

    private func isBottomCase(_ index: Int, in word: String) -> Bool {
      index >= word.count
    }

    private func isBoundary(_ position: (row: Int, col: Int)) -> Bool {
      position.row < 0 || position.row == rowsCount || position.col < 0 || position.col == colsCount
    }

    private func isInvalidCharacter(at position: (row: Int, col: Int), for index: Int, in word: String) -> Bool {
      board[position.row][position.col] != Array(word)[index]
    }

    private func dfs(at position: (row: Int, col: Int), for index: Int, in word: String) -> Bool {
      let offsets = [(0, 1), (1, 0), (0, -1), (-1, 0)]

      for (rowOffset, colOffset) in offsets
        where backtrack(at: (position.row + rowOffset, position.col + colOffset), for: index + 1, in: word) {
        return true
      }
      return false
    }
  }

  static func getSolution() {
    let board: [[Character]] = [["A", "B", "C", "E"], ["S", "F", "C", "S"], ["A", "D", "E", "E"]], word = "ABCCED"
    print(Solution().exist(board, word))
  }
}
