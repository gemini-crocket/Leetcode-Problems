//
//  139.swift - Word Break
//  Leetcode-Problems
//  Source   :
//  Category :
//
//  Created by Thomas Heinis on .
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P139 {
  class Solution {
    var memo: [String: Bool] = [:]

    func wordBreak(_ string: String, _ wordDict: [String]) -> Bool {
      if let output = memo[string] {
        return output
      }

      if string.isEmpty {
        return true
      }

      for word in wordDict where string.hasPrefix(word) {
        let next = String(string.dropFirst(word.count))
        if wordBreak(next, wordDict) {
          memo[next] = true
          return true
        }
      }
      memo[string] = false
      return false
    }
  }

  static func getSolution() {
    let string = "leetcode", wordDict = ["leet", "code"]
    print(Solution().wordBreak(string, wordDict))
  }
}
