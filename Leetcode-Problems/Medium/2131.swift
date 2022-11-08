//
//  2131.swift - Longest Palindrome by Concatenating Two Letter Words
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/longest-palindrome-by-concatenating-two-letter-words/
//  Category : Array, Hash Table, String, Greedy, Counting
//
//  Created by Thomas Heinis on 03/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

/* You are given an array of strings words. Each element of words
  consists of two lowercase English letters.

  Create the longest possible palindrome by selecting some elements
  from words and concatenating them in any order. Each element can
  be selected at most once.

  Return the length of the longest palindrome that you can create.
  If it is impossible to create any palindrome, return 0.

  A palindrome is a string that reads the same forward and backward. */

enum P2131 {
  class Solution {
    func longestPalindrome(_ words: [String]) -> Int {
      var wordsCount: [String: Int] = [:]

      for word in words {
        wordsCount[word, default: 0] += 1
      }

      var length = 0
      var central = false

      for (word, amount) in wordsCount {
        let reversedWord = String(word.reversed())

        if wordsCount.keys.contains(reversedWord) {
          if word == reversedWord {
            if amount % 2 == 0 {
              length += amount
            } else {
              length += amount - 1
              central = true
            }
          } else {
            let originalWordCounter = wordsCount[word, default: 0]
            let reversedWordCounter = wordsCount[reversedWord, default: 0]
            let min = min(originalWordCounter, reversedWordCounter)
            wordsCount[word] = originalWordCounter - min
            wordsCount[reversedWord] = reversedWordCounter - min
            length += 2 * min
          }
        }
      }

      if central {
        length += 1
      }

      return 2 * length
    }
  }

  static func getSolution() {
    let words = ["lc", "cl", "gg"]
    print(Solution().longestPalindrome(words))
  }
}
