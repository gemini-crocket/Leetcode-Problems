//
//  213.swift - House Robber II
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/house-robber-ii/
//  Category  : Array, Dynamic Programming
//
//  Created by Thomas Heinis on 31/10/2022.
//  GitHub    : https://github.com/hoseiocean
//  LinkedIn  : https://linkedin.com/in/hoseiocean
//  E-mail    : mailto:thomas.heinis@ik.me
//

/*
  You are a professional robber planning to rob houses
  along a street. Each house has a certain amount of money
  stashed. All houses at this place are arranged in a circle.
  That means the first house is the neighbor of the last one.
  Meanwhile, adjacent houses have a security system connected,
  and it will automatically contact the police if two adjacent
  houses were broken into on the same night.

  Given an integer array nums representing the amount of money
  of each house, return the maximum amount of money you can rob
  tonight without alerting the police.
  */

enum P213 {
  class Solution {
    func rob(_ nums: [Int]) -> Int {
      if nums.isEmpty {
        return 0
      }

      if nums.count == 1 {
        return nums[0]
      }

      let max1 = rob_simple(nums, 0, nums.count - 2)
      let max2 = rob_simple(nums, 1, nums.count - 1)

      return max(max1, max2)
    }

    private func rob_simple(_ nums: [Int], _ start: Int, _ end: Int) -> Int {
      var thief1 = 0, thief2 = 0

      for i in start ... end {
        let currentTheft = thief1
        let currentHome = nums[i]
        thief1 = max(currentHome + thief2, thief1)
        thief2 = currentTheft
      }

      return thief1
    }
  }

  static func getSolution() {
    let nums = [1, 2, 3, 1]
    print(Solution().rob(nums))
  }
}
