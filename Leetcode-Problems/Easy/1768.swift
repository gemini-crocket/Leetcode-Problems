//
//  1768.swift - Merge Strings Alternately
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/merge-strings-alternately/
//  Category : Two Pointers, String
//
//  Created by Thomas Heinis on 20/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P1768 {
  class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
      let word1Array = Array(word1)
      let word2Array = Array(word2)
      let mergedLength = max(word1Array.count, word2Array.count)

      var i = 0
      var merged: String = ""

      while i < mergedLength {
        if i < word1Array.count {
          merged.append(word1Array[i])
        }
        if i < word2Array.count {
          merged.append( word2Array[i])
        }
        i += 1
      }

      return merged
    }
  }

  static func getSolution() {
    let word1 = "abc", word2 = "pqr"
    print(Solution().mergeAlternately(word1, word2))
  }
}
