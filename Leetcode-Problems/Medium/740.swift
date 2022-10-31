//
//  740.swift - Delete and Earn
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/delete-and-earn/
//  Category : Array, Hash Table, Dynamic Programming
//
//  Created by Thomas Heinis on .
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

/*
  You are given an integer array nums. You want to maximize
  the number of points you get by performing the following
  operation any number of times:

  Pick any nums[i] and delete it to earn nums[i] points.
  Afterwards, you must delete every element equal
  to nums[i] - 1 and every element equal to nums[i] + 1.
  Return the maximum number of points you can earn by applying
  the above operation some number of times.
*/

enum P740 {
  class Solution {
    private var points: [Int: Int] = [:]
    private var cache: [Int: Int] = [:]

    private func maxPoints(_ num: Int) -> Int {
      if num == 0 {
        return 0
      }

      if num == 1 {
        return points[1, default: 0]
      }

      if let maxPoints = cache[num] {
        return maxPoints
      }

      let gain = points[num, default: 0]
      cache[num] = max(maxPoints(num - 1), maxPoints(num - 2) + gain)
      if let maxPoints = cache[num] {
        return maxPoints
      }

      return num
    }

    func deleteAndEarn(_ nums: [Int]) -> Int {
      var maxNumber = 0

      for num in nums {
        points[num] = points[num, default: 0] + num
        maxNumber = max(maxNumber, num)
      }

      return maxPoints(maxNumber)
    }
  }

  static func getSolution() {
    let nums = [2, 2, 3, 3, 3, 4]
    print(Solution().deleteAndEarn(nums))
  }
}
