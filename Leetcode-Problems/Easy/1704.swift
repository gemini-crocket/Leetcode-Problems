//
//  1704.swift - Determine if String Halves Are Alike
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/determine-if-string-halves-are-alike/
//  Category : String, Counting
//
//  Created by Thomas Heinis on 01/12/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P1704 {
  class Solution {
    func halvesAreAlike(_ string: String) -> Bool {
      let string = Array(string)
      let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
      var leftCount = 0, rightCount = 0, leftPointer = 0, rightPointer = string.count - 1

      while leftPointer < rightPointer {
        if vowels.contains(string[leftPointer]) {
          leftCount += 1
        }

        if vowels.contains(string[rightPointer]) {
          rightCount += 1
        }

        leftPointer += 1
        rightPointer -= 1
      }

      return leftCount == rightCount
    }
  }

  static func getSolution() {
    let string = "book"
    print(Solution().halvesAreAlike(string))
  }
}
