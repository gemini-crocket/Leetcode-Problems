//
//  496.swift - Next Greater Element I
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/next-greater-element-i/
//  Category : Array, Hash Table, Stack, Monotonic Stack
//
//  Created by Thomas Heinis on 04/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

/* The next greater element of some element x in an array is the first
  greater element that is to the right of x in the same array.

  You are given two distinct 0-indexed integer arrays nums1 and nums2,
  where nums1 is a subset of nums2.

  For each 0 <= i < nums1.length, find the index j
  such that nums1[i] == nums2[j] and determine the next greater element
  of nums2[j] in nums2. If there is no next greater element, then the answer
  for this query is -1.

  Return an array ans of length nums1.length such that ans[i] is the next
  greater element as described above. */

enum P496 {
  class Solution {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
      let nums1Count = nums1.count

      var output = Array(repeating: 0, count: nums1Count)
      var stack: [Int] = []
      var map: [Int: Int] = [:]

      for number in nums2 {
        while !stack.isEmpty, let last = stack.last, number > last {
          if let last = stack.popLast() {
            map[last] = number
          }
        }
        stack.append(number)
      }

      for i in 0 ..< nums1Count {
        let number = nums1[i]

        if let next = map[number] {
          output[i] = next
        } else {
          output[i] = -1
        }
      }

      return output
    }
  }

  static func getSolution() {
    let nums1 = [4, 1, 2], nums2 = [1, 3, 4, 2]
    print(Solution().nextGreaterElement(nums1, nums2))
  }
}
