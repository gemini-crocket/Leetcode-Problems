//
//  1309.swift - Decrypt String from Alphabet to Integer Mapping
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/decrypt-string-from-alphabet-to-integer-mapping/
//  Category : String
//
//  Created by Thomas Heinis on 21/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P1309 {
  class Solution {
    func freqAlphabets(_ string: String) -> String {
      let stringArray = Array(string).map { String($0) }

      var outputString = ""
      var i = 0

      while i < stringArray.count {
        if i + 2 < stringArray.count && stringArray[i + 2] == "#" {
          outputString += String(UnicodeScalar(96 + Int(stringArray[i] + stringArray[i + 1])!)!)
          i += 3
        } else {
          outputString += String(UnicodeScalar(96 + Int(stringArray[i])!)!)
          i += 1
        }
      }
      return outputString
    }
  }

  static func getSolution() {
    let string = "10#11#12"
    print(Solution().freqAlphabets(string))
  }
}
