//
//  242.swift : Valid Anagram
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 21/10/2022.
//

struct P242 {
  class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
      let sMap = characterMap(s)
      let tMap = characterMap(t)

      if s.count != t.count {
        return false
      }

      for (index, value) in sMap {
        if let count = tMap[index] {
          if count == value {
            continue
          }
        }
        return false
      }
      return true
    }

    func characterMap(_ s: String) -> [Character:Int] {
      var map: [Character: Int] = [:]

      for character in s {
        map[character] = map[character, default: 0] + 1
      }

      return map
    }
  }

  static func getSolution() -> Void {
    print(Solution().isAnagram("1233214", "3211233"))
  }
}
