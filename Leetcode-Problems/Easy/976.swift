//
//  976.swift - Largest Perimeter Triangle
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/largest-perimeter-triangle/
//  Category : Array, Math, Greedy, Sorting
//
//  Created by Thomas Heinis on 02/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

/* Given an integer array nums, return the largest perimeter
  of a triangle with a non-zero area, formed from three
  of these lengths. If it is impossible to form any triangle
  of a non-zero area, return 0. */

enum P976 {
  class Solution {
    func largestPerimeter(_ nums: [Int]) -> Int {
      var nums = nums
      nums.sort()

      for i in stride(from: nums.count - 3, to: -1, by: -1) where nums[i] + nums[i + 1] > nums[i + 2] {
        return nums[i] + nums[i + 1] + nums[i + 2]
      }

      return 0
    }
  }

  static func getSolution() {
    let nums = [2, 1, 2]
    print(Solution().largestPerimeter(nums))
  }
}
