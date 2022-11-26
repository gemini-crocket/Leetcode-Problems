//
//  198.swift - House Robber
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/house-robber/
//  Category  : Array, Dynamic Programming
//
//  Created by Thomas Heinis on 31/10/2022, last updated on 26/11/2022.
//  GitHub    : https://github.com/hoseiocean
//  LinkedIn  : https://linkedin.com/in/hoseiocean
//  E-mail    : mailto:thomas.heinis@ik.me
//

/*
  You are a professional robber planning to rob houses
  along a street. Each house has a certain amount of
  money stashed, the only constraint stopping you from
  robbing each of them is that adjacent houses have
  security systems connected and it will automatically
  contact the police if two adjacent houses were broken
  into on the same night.

  Given an integer array nums representing the amount
  of money of each house, return the maximum amount
  of money you can rob tonight without alerting the police.

  Example 1:
  Input: nums = [1,2,3,1]
  Output: 4
  Explanation: Rob house 1 (money = 1) and then rob house 3 (money = 3).
  Total amount you can rob = 1 + 3 = 4.

  Example 2:
  Input: nums = [2,7,9,3,1]
  Output: 12
  Explanation: Rob house 1 (money = 2), rob house 3 (money = 9)
  and rob house 5 (money = 1).
  Total amount you can rob = 2 + 9 + 1 = 12.
  */

enum P198 {
  class Solution {
    func rob(_ nums: [Int]) -> Int {
      let numsCount = nums.count

      if numsCount == 0 {
        return 0
      }

      var robNextPlusOne = 0
      var robNext = nums[numsCount - 1]

      for i in stride(from: numsCount - 2, to: -1, by: -1) {
        let current = max(robNext, robNextPlusOne + nums[i])
        robNextPlusOne = robNext
        robNext = current
      }

      return robNext
    }
  }

  static func getSolution() {
    let nums = [2, 7, 9, 3, 1]
    print(Solution().rob(nums))
  }
}
