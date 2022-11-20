//
//  389.swift - Find the Difference
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/find-the-difference/
//  Category : Hash Table, String, Bit Manipulation, Sorting
//
//  Created by Thomas Heinis on 20/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P389 {
  class Solution {
    func findTheDifference(_ string1: String, _ string2: String) -> Character {
      var map: [Character: Int] = [:]

      for character in string1 {
        map[character, default: 0] += 1
      }

      for character in string2 {
        if let value = map[character], value > 0 {
          map[character, default: 0] -= 1
        } else {
          return character
        }
      }

      return " "
    }
  }

  static func getSolution() {
    let string1 = "abcd", string2 = "abcde"
    print(Solution().findTheDifference(string1, string2))
  }
}
