//
//  55.swift - Jump Game
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/jump-game/
//  Category : Array, Dynamic Programming, Greedy
//
//  Created by Thomas Heinis on 27/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P55 {
  class Solution {
    func canJump(_ nums: [Int]) -> Bool {
      var lastPos = nums.count - 1

      for i in stride(from: nums.count - 1, to: -1, by: -1) where i + nums[i] >= lastPos {
        lastPos = i
      }
      return lastPos == 0
    }
  }

  static func getSolution() {
    let nums = [2, 3, 1, 1, 4]
    print(Solution().canJump(nums))
  }
}
