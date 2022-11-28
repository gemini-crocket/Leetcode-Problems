//
//  53.swift - Maximum Subarray
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/maximum-subarray/
//  Category : Array, Divide and Conquer, Dynamic Programming
//
//  Created by Thomas Heinis on 16/10/2022, last updated on 28/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P53 {
  class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
      var maxEndingHere = 0
      var maxSoFar = Int.min

      for num in nums {
        maxEndingHere += num
        if maxSoFar < maxEndingHere {
          maxSoFar = maxEndingHere
        }
        if maxEndingHere < 0 {
          maxEndingHere = 0
        }
      }
      return maxSoFar
    }
  }

  static func getSolution() {
    let nums = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
    print(Solution().maxSubArray(nums))
  }
}
