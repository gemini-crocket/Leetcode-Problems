//
//  709.swift - To Lower Case
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/to-lower-case/
//  Category : String
//
//  Created by Thomas Heinis on 21/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P709 {
  class Solution {
    func toLowerCase(_ string: String) -> String {
      return string.lowercased()
    }
  }

  static func getSolution() {
    let string = "LOVELY"
    print(Solution().toLowerCase(string))
  }
}
