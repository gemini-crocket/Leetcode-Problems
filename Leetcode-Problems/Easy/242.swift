//
//  242.swift : Valid Anagram
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 21/10/2022.
//  GitHub    :  https://github.com/hoseiocean
//  LinkedIn  :  https://linkedin.com/in/hoseiocean
//  E-mail    :  mailto:thomas.heinis@ik.me
//

enum P242 {
  class Solution {
    func isAnagram(_ string1: String, _ string2: String) -> Bool {
      let sMap = characterMap(string1)
      let tMap = characterMap(string2)

      if string1.count != string2.count {
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

    func characterMap(_ string: String) -> [Character: Int] {
      var map: [Character: Int] = [:]

      for character in string {
        map[character] = map[character, default: 0] + 1
      }

      return map
    }
  }

  static func getSolution() {
    print(Solution().isAnagram("1233214", "3211233"))
  }
}
