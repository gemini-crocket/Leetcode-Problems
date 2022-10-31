//
//  75.swift - Sort Colors
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/sort-colors/
//  Category  : Array, Two Pointers, Sorting
//
//  Created by Thomas Heinis on 31/10/2022.
//  GitHub    : https://github.com/hoseiocean
//  LinkedIn  : https://linkedin.com/in/hoseiocean
//  E-mail    : mailto:thomas.heinis@ik.me
//

/*
  The problem is known as Dutch National Flag Problem
  and first was proposed by Edsger W. Dijkstra. The idea is
  to attribute a color to each number and then to arrange
  them following the order of colors on the Dutch flag.

  Given an array nums with n objects colored red, white,
  or blue, sort them in-place so that objects of the same color
  are adjacent, with the colors in the order red, white, and blue.

  We will use the integers 0, 1, and 2 to represent the color red,
  white, and blue, respectively.

  You must solve this problem without using the library's sort function.

  Example 1:

  Input: nums = [2,0,2,1,1,0]
  Output: [0,0,1,1,2,2]

  Example 2:

  Input: nums = [2,0,1]
  Output: [0,1,2]
  */

enum P75 {
  class Solution {
    func sortColors(_ nums: inout [Int]) {
      let firstIndexOfArray = 0
      let lastIndexOfArray = nums.count - 1

      var leftPointer = firstIndexOfArray
      var rightPointer = lastIndexOfArray
      var movingPointer = firstIndexOfArray

      while movingPointer <= rightPointer {
        if nums[movingPointer] == 0 {
          (nums[movingPointer], nums[leftPointer]) = (nums[leftPointer], nums[movingPointer])
          movingPointer += 1
          leftPointer += 1
        } else if nums[movingPointer] == 2 {
          (nums[movingPointer], nums[rightPointer]) = (nums[rightPointer], nums[movingPointer])
          rightPointer -= 1
        } else if nums[movingPointer] == 1 {
          movingPointer += 1
        }
      }
    }
  }

  static func getSolution() {
    var nums = [2, 0, 2, 1, 1, 0]
    Solution().sortColors(&nums)
    print(nums)
  }
}
