//
//  303.swift - Range Sum Query - Immutable
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/range-sum-query-immutable/
//  Category : Array, Design, Prefix Sum
//
//  Created by Thomas Heinis on 24/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P303 {
  class NumArray {
    private let nums: [Int]

    init(_ nums: [Int]) {
      self.nums = nums
    }

    func sumRange(_ left: Int, _ right: Int) -> Int {
      return nums[left ... right].reduce(0, +)
    }
  }

  static func getSolution() {
  }
}
