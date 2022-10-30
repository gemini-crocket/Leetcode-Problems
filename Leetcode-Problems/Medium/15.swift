//
//  15.swift - 3Sum
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/3sum/
//  Category  : Array, Two Pointers, Sorting
//
//  Created by Thomas Heinis on .
//  GitHub    : https://github.com/hoseiocean
//  LinkedIn  : https://linkedin.com/in/hoseiocean
//  E-mail    : mailto:thomas.heinis@ik.me
//

/*

  Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.

  Notice that the solution set must not contain duplicate triplets.

  Example 1:

  Input: nums = [-1,0,1,2,-1,-4]
  Output: [[-1,-1,2],[-1,0,1]]
  Explanation:
  nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0.
  nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0.
  nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0.
  The distinct triplets are [-1,0,1] and [-1,-1,2].
  Notice that the order of the output and the order of the triplets does not matter.
  Example 2:

  Input: nums = [0,1,1]
  Output: []
  Explanation: The only possible triplet does not sum up to 0.
  Example 3:

  Input: nums = [0,0,0]
  Output: [[0,0,0]]
  Explanation: The only possible triplet sums up to 0.

  */

enum P15 {
  class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
      var output: [[Int]] = []
      let nums = nums.sorted()
      let numCount = nums.count

      guard numCount >= 3 else { return output }

      for i in 0 ..< numCount {
        if i > 0 && nums[i] == nums[i - 1] { continue }

        let num = 0 - nums[i]
        var candidate1 = i + 1, candidate2 = numCount - 1

        while candidate1 < candidate2 {
          let numA = nums[candidate1], numB = nums[candidate2]
          let sum = numA + numB
          if sum == num {
            output.append([nums[i], numA, numB])
            candidate1 += 1
            candidate2 -= 1
            while candidate1 < candidate2 && nums[candidate1] == nums[candidate1 - 1] {
              candidate1 += 1
            }
            while candidate1 < candidate2 && nums[candidate2] == nums[candidate2 + 1] {
              candidate2 -= 1
            }
          } else {
            sum > num ? (candidate2 -= 1) : (candidate1 += 1)
          }
        }
      }
      return output
    }
  }

  static func getSolution() {
    let numbers = [-1, 0, 1, 2, -1, -4]
    print(Solution().threeSum(numbers))
  }
}
