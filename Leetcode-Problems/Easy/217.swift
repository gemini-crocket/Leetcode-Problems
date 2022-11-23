//
//  217.swift - Contains Duplicate
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/contains-duplicate/
//  Category : Array, Hash Table, Sorting
//
//  Created by Thomas Heinis on 16/10/2022, last updated on 23/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P217 {
  class Solution {
    func containsDuplicate(_ numbers: [Int]) -> Bool {
      return numbers.count > Set(numbers).count
    }
  }

  static func getSolution() {
    let numbers = [1, 2, 3, 1]
    print(Solution().containsDuplicate(numbers))
  }
}
