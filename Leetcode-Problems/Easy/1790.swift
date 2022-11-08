//
//  1790.swift - Check if One String Swap Can Make Strings Equal
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/check-if-one-string-swap-can-make-strings-equal/
//  Category : Hash Table, String, Counting
//
//  Created by Thomas Heinis on 03/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

/* You are given two strings s1 and s2 of equal length. A string
  swap is an operation where you choose two indices in a string
  (not necessarily different) and swap the characters at these indices.

  Return true if it is possible to make both strings equal by performing
  at most one string swap on exactly one of the strings. Otherwise, return
  false. */

enum P1790 {
  class Solution {
    func areAlmostEqual(_ string1: String, _ string2: String) -> Bool {
      if string1.count != string2.count {
        return false
      }

      if string1 == string2 {
        return true
      }

      let string1Array = Array(string1)
      let string2Array = Array(string2)
      var indexArray: [Int] = []

      for i in 0 ..< string1Array.count where string1Array[i] != string2Array[i] {
        indexArray.append(i)

        if indexArray.count == 2 {
          var standardArray = string1Array
          standardArray.swapAt(indexArray[0], indexArray[1])
          return string2Array == standardArray
        }
      }

      return false
    }
  }

  static func getSolution() {
    let string1 = "bank", string2 = "kane"
    print(Solution().areAlmostEqual(string1, string2))
  }
}
