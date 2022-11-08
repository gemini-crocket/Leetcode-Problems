//
//  345.swift - Reverse Vowels of a String
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/reverse-vowels-of-a-string/
//  Category : Two Pointers, String
//
//  Created by Thomas Heinis on 04/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

/* Given a string s, reverse only all the vowels in the string and return it.

  The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both lower
  and upper cases, more than once. */

enum P345 {
  class Solution {
    private func isVowel(_ character: Character) -> Bool {
      let vowels = Set("aeiouAEIOU")
      return vowels.contains(character)
    }

    func reverseVowels(_ string: String) -> String {
      let stringLength = string.count
      var stringArray = Array(string)
      var leftPointer = 0
      var rightPointer = stringLength - 1

      while leftPointer < rightPointer {
        while leftPointer < stringLength && !isVowel(stringArray[leftPointer]) {
          leftPointer += 1
        }

        while rightPointer >= 0 && !isVowel(stringArray[rightPointer]) {
          rightPointer -= 1
        }

        if leftPointer < rightPointer {
          stringArray.swapAt(leftPointer, rightPointer)
          leftPointer += 1
          rightPointer -= 1
        }
      }
      return String(stringArray)
    }
  }

  static func getSolution() {
    let string = "leetcode"
    print(Solution().reverseVowels(string))
  }
}
