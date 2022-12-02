//
//  42.swift - Trapping Rain Water
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/trapping-rain-water/
//  Category : Array, Two Pointers, Dynamic Programming, Stack, Monotonic Stack
//
//  Created by Thomas Heinis on 02/12/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P42 {
  class Solution {
    func trap(_ height: [Int]) -> Int {
      var leftPointer = 0, rightPointer = height.count - 1
      var trap = 0
      var leftMax = 0, rightMax = 0

      while leftPointer < rightPointer {
        if height[leftPointer] < height[rightPointer] {
          if height[leftPointer] >= leftMax {
            leftMax = height[leftPointer]
          } else {
            trap += leftMax - height[leftPointer]
          }
          leftPointer += 1
        } else {
          if height[rightPointer] >= rightMax {
            rightMax = height[rightPointer]
          } else {
            trap += rightMax - height[rightPointer]
          }
          rightPointer -= 1
        }
      }
      return trap
    }
  }

  static func getSolution() {
    let height = [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]
    print(Solution().trap(height))
  }
}
