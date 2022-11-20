//
//  1678.swift - Goal Parser Interpretation
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/goal-parser-interpretation/
//  Category : String
//
//  Created by Thomas Heinis on 20/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P1678 {
  class Solution {
    func interpret(_ command: String) -> String {
      let commandArray = Array(command)
      var interpretation = ""

      for index in commandArray.indices {
        if commandArray[index] == "(" {
          if commandArray[index + 1] == ")" {
            interpretation.append("o")
          }
        } else if commandArray[index] != ")" {
          interpretation.append(commandArray[index])
        }
      }

      return interpretation
    }
  }

  static func getSolution() {
    let command = "G()()()()(al)"
    print(Solution().interpret(command))
  }
}
