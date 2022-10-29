//
//  20.swift - Valid Parentheses
//  Leetcode-Problems
//  Source    :  https://leetcode.com/problems/valid-parentheses/
//  Category  :  Stack, String
//
//  Created by Thomas Heinis on 24/10/2022.
//  GitHub    :  https://github.com/hoseiocean
//  LinkedIn  :  https://linkedin.com/in/hoseiocean
//  E-mail    :  mailto:thomas.heinis@ik.me
//

/*
  * Given a string containing just the characters '(', ')', '{', '}', '[' and ']',
  * determine if the input string is valid.
  *
  * The brackets must close in the correct order, "()" and "()[]{}" are all valid
  * but "(]" and "([)]" are not.
  *
  */

enum P20 {
  class Solution {
    func isValid(_ string: String) -> Bool {
      var stack: [Character] = []
      let map: [Character: Character] = ["(": ")", "[": "]", "{": "}"]

      for parenthese in string {
        if map.keys.contains(parenthese) {
          stack.append(parenthese)
        } else {
          if let last = stack.popLast() {
            if parenthese != map[last] {
              return false
            }
          }
          if stack.isEmpty {
            return false
          }
        }
      }
      return stack.isEmpty
    }

    static func getSolution() {
      print(Solution().isValid("(("))
      print(Solution().isValid("(])"))
      print(Solution().isValid("([{}])"))
      print(Solution().isValid("()[]{}"))
      print(Solution().isValid("([{)]}"))
    }
  }
}
