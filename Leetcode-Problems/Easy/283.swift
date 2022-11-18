//
//  283.swift - Move Zeroes
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/move-zeroes/
//  Category : Array, Two Pointers
//
//  Created by Thomas Heinis on 18/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P283 {
  class Solution {
    func moveZeroes(_ nums: inout [Int]) {
      var pointer = 0

      for i in 0 ..< nums.count where nums[i] != 0 {
        (nums[i], nums[pointer]) = (nums[pointer], nums[i])
        pointer += 1
      }
    }
  }

  static func getSolution() {
    var nums = [2, 0, 1, 0, 3, 12]
    Solution().moveZeroes(&nums)
    print(nums)
  }
}
