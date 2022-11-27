//
//  45.swift - Jump Game II
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/jump-game-ii/
//  Category : Array, Dynamic Programming, Greedy
//
//  Created by Thomas Heinis on 27/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P45 {
  class Solution {
    func jump(_ nums: [Int]) -> Int {
      var i = 0, maxReachable = 0, lastPos = 0, jumps = 0

      while lastPos < nums.count - 1 {
        maxReachable = max(maxReachable, i + nums[i])
        if i == lastPos {
          lastPos = maxReachable
          jumps += 1
        }
        i += 1
      }
      return jumps
    }
  }

  static func getSolution() {
    let nums = [2, 3, 1, 1, 4]
    print(Solution().jump(nums))
  }
}
