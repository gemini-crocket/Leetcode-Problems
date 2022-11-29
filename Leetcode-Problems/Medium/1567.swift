//
//  1567.swift - Maximum Length of Subarray With Positive Product
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/maximum-length-of-subarray-with-positive-product/
//  Category : Array, Dynamic Programming, Greedy
//
//  Created by Thomas Heinis on 29/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P1567 {
  class Solution {
    func getMaxLen(_ nums: [Int]) -> Int {
      var maxLen = 0
      var positivesCount = 0
      var negativesCount = 0

      for num in nums {
        if num < 0 {
          let tmp = positivesCount
          positivesCount = negativesCount == 0 ? 0 : negativesCount + 1
          negativesCount = tmp + 1
        } else if num > 0 {
          positivesCount += 1
          negativesCount = negativesCount == 0 ? 0 : negativesCount + 1
        } else {
          positivesCount = 0
          negativesCount = 0
        }
        maxLen = max(maxLen, positivesCount)
      }
      return maxLen
    }
  }

  static func getSolution() {
    let nums = [1, -2, -3, 4]
    print(Solution().getMaxLen(nums))
  }
}
