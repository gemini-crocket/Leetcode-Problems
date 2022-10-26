//
//  20.swift - Valid Parentheses
//  Leetcode-Problems
//  Source    :  https://leetcode.com/problems/valid-parentheses/
//  Category  :  Stack, String
//
//  Created by Thomas Heinis on 24/10/2022.
//  Github    :  https://github.com/thomas-heinis
//  Linkedin  :  https://linkedin.com/in/thomas-heinis
//  Mail      :  mailto:thomas.heinis@ik.me

/**
 *
 * Given a string containing just the characters '(', ')', '{', '}', '[' and ']',
 * determine if the input string is valid.
 *
 * The brackets must close in the correct order, "()" and "()[]{}" are all valid
 * but "(]" and "([)]" are not.
 *
 */

struct P20 {

  class Solution {

    func isValid(_ s: String) -> Bool {
      var stack: [Character] = []
      let map: [Character: Character] = ["(":")", "[":"]", "{":"}"]

      for parenthese in s {
        if map.keys.contains(parenthese) {
          stack.append(parenthese)
        } else if stack.isEmpty || parenthese != map[stack.popLast()!] {
          return false
        }
      }
      return stack.isEmpty
    }

    static func getSolution() -> Void {
      print(Solution().isValid("(("))
      print(Solution().isValid("(])"))
      print(Solution().isValid("([{}])"))
      print(Solution().isValid("()[]{}"))
      print(Solution().isValid("([{)]}"))
    }
  }
}
