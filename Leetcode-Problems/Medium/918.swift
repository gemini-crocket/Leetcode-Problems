//
//  918.swift - Maximum Sum Circular Subarray
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/maximum-sum-circular-subarray/
//  Category : Array, Divide and Conquer, Dynamic Programming, Queue, Monotonic Queue
//
//  Created by Thomas Heinis on 28/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P918 {
  class Solution {
    func maxSubarraySumCircular(_ nums: [Int]) -> Int {
      var sum = 0
      var maxSoFar = Int.min
      var maxEndingHere = 0
      var minSoFar = Int.max
      var minEndingHere = 0

      for num in nums {
        maxEndingHere += num
        maxSoFar = max(maxSoFar, maxEndingHere)
        if maxEndingHere < 0 {
          maxEndingHere = 0
        }

        minEndingHere += num
        minSoFar = min(minSoFar, minEndingHere)
        if minEndingHere > 0 {
          minEndingHere = 0
        }

        sum += num
      }

      return sum == minSoFar ? maxSoFar : max(maxSoFar, sum - minSoFar)
    }
  }

  static func getSolution() {
    let nums = [1, -2, 3, -2]
    print(Solution().maxSubarraySumCircular(nums))
  }
}
