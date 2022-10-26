//
//  350.swift : Intersection of Two Arrays II
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 18/10/2022.
//

struct P350 {
  class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
      var map: [Int: Int] = [:]
      var intersections: [Int] = []

      for num in nums1 {
        map[num, default: 0] += 1
      }

      for num in nums2 {
        if map[num] != nil && map[num]! > 0 {
          intersections.append(num)
          map[num]! -= 1
        }
      }

      return intersections
    }
  }
}
