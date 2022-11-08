//
//  1502.swift - Can Make Arithmetic Progression From Sequence
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/can-make-arithmetic-progression-from-sequence/
//  Category : Array, Sorting
//
//  Created by Thomas Heinis on 03/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

/* A sequence of numbers is called an arithmetic progression if the difference
  between any two consecutive elements is the same.

  Given an array of numbers arr, return true if the array can be rearranged
  to form an arithmetic progression. Otherwise, return false. */

enum P1502 {
  class Solution {
    func canMakeArithmeticProgression(_ arr: [Int]) -> Bool {
      var intArray = arr
      intArray.sort()

      let difference = intArray[0] - intArray[1]

      for i in 1 ..< intArray.count - 1 where difference != intArray[i] - intArray[i + 1] {
        return false
      }

      return true
    }
  }

  static func getSolution() {
    let arr = [3, 5, 1]
    print(Solution().canMakeArithmeticProgression(arr))
  }
}
