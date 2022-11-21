//
//  953.swift - Verifying an Alien Dictionary
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/verifying-an-alien-dictionary/
//  Category : Array, Hash Table, String
//
//  Created by Thomas Heinis on 21/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P953 {
  class Solution {
    func isAlienSorted(_ words: [String], _ order: String) -> Bool {
      var alphabet: [Character: Int] = [:]

      for (char, index) in order.enumerated() {
        alphabet[index] = char
      }

      for i in 0 ..< words.count - 1 where !isInOrder(words[i], words[i + 1], alphabet) {
        return false
      }

      return true
    }

    func isInOrder(_ word1: String, _ word2: String, _ alphabet: [Character: Int]) -> Bool {
      let minLength: Int = min(word1.count, word2.count)

      for i in 0 ..< minLength {
        let char1 = Array(word1)[i]
        let char2 = Array(word2)[i]

        guard char1 != char2 else { continue }

        let value1 = alphabet[char1] ?? -1
        let value2 = alphabet[char2] ?? -1

        return value2 > value1
      }

      return word1.count <= word2.count
    }
  }

  static func getSolution() {
//    let words = ["hello", "leetcode"], order = "hlabcdefgijkmnopqrstuvwxyz"
    let words = ["hello", "hello"], order = "abcdefghijklmnopqrstuvwxyz"
    print(Solution().isAlienSorted(words, order))
  }
}
