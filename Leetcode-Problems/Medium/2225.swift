//
//  2225.swift - Find Players With Zero or One Losses
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/find-players-with-zero-or-one-losses/
//  Category : Array, Hash Table, Sorting, Counting
//
//  Created by Thomas Heinis on 28/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P2225 {
  class Solution {
    func findWinners(_ matches: [[Int]]) -> [[Int]] {
      let loosers = Dictionary(matches.map { ($0[1], 1) }, uniquingKeysWith: +)
      let winners = Set(matches.map { $0[0] })
      return [Array(winners.subtracting(loosers.keys)).sorted(), Array(loosers.filter { $0.value == 1 }.keys).sorted()]
    }
  }

  static func getSolution() {
    let matches = [[1, 3], [2, 3], [3, 6], [5, 6], [5, 7], [4, 5], [4, 8], [4, 9], [10, 4], [10, 9]]
    print(Solution().findWinners(matches))
  }
}
