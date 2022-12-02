//
//  1657.swift - Determine if Two Strings Are Close
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/determine-if-two-strings-are-close/
//  Category : Hash Table, String, Sorting
//
//  Created by Thomas Heinis on 02/12/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P1657 {
  class Solution {
    func closeStrings(_ word1: String, _ word2: String) -> Bool {
      if word1.count != word2.count { return false }

      let word1Array = Array(word1), word2Array = Array(word2)
      var map1: [Character: Int] = [:], map2: [Character: Int] = [:]

      for i in 0 ..< word1.count {
        map1[word1Array[i], default: 0] += 1
        map2[word2Array[i], default: 0] += 1
      }

      if map1.keys != map2.keys || map1.values.sorted() != map2.values.sorted() {
        return false
      }

      return true
    }
  }

  static func getSolution() {
    let word1 = "abc", word2 = "bca"
    print(Solution().closeStrings(word1, word2))
  }
}
