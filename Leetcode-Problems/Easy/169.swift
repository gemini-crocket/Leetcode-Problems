//
//  169.swift - Majority Element
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/majority-element/
//  Category  : Array, Hash Table, Divide and Conquer, Sorting, Counting
//
//  Created by Thomas Heinis on 30/10/2022.
//  GitHub    : https://github.com/hoseiocean
//  LinkedIn  : https://linkedin.com/in/hoseiocean
//  E-mail    : mailto:thomas.heinis@ik.me
//

/*
  Given an array nums of size n, return the majority element.

  The majority element is the element that appears more
  than ⌊n / 2⌋ times. You may assume that the majority element
  always exists in the array.

  Example 1:

  Input: nums = [3,2,3]
  Output: 3
  Example 2:

  Input: nums = [2,2,1,1,1,2,2]
  Output: 2

  */

enum P169 {
  class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
      var counting = 0
      var candidate: Int?

      for num in nums {
        if counting == 0 {
          candidate = num
        }
        counting += (num == candidate) ? 1 : -1
      }

      return candidate ?? -1
    }
  }

  static func getSolution() {
    let numbers = [2, 2, 1, 1, 1, 2, 2]
    print(Solution().majorityElement(numbers))
  }
}
