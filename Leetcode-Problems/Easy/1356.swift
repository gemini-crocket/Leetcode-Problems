//
//  1356.swift - Sort Integers by The Number of 1 Bits
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/sort-integers-by-the-number-of-1-bits/
//  Category : Array, Bit Manipulation, Sorting, Counting
//
//  Created by Thomas Heinis on 23/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P1356 {
  class Solution {
    func sortByBits(_ integersArray: [Int]) -> [Int] {
      integersArray.sorted {
        let nzbCount = ($0.nonzeroBitCount, $1.nonzeroBitCount)
        return nzbCount.0 == nzbCount.1 ? $0 < $1 : nzbCount.0 < nzbCount.1
      }
    }
  }

  static func getSolution() {
    let integers = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    print(Solution().sortByBits(integers))
  }
}
