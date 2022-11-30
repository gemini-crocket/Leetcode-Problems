//
//  1207.swift - Unique Number of Occurrences
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/unique-number-of-occurrences/
//  Category : Array, Hash Table
//
//  Created by Thomas Heinis on 30/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P1207 {
  class Solution {
    func uniqueOccurrences(_ intArray: [Int]) -> Bool {
      var frequencesArray: [Int: Int] = [:]

      for int in intArray {
        frequencesArray[int, default: 0] += 1
      }

      let frequencesSet = Set<Int>(frequencesArray.values)

      return frequencesArray.count == frequencesSet.count
    }
  }

  static func getSolution() {
    let intArray = [1, 2, 2, 1, 1, 3]
    print(Solution().uniqueOccurrences(intArray))
  }
}
