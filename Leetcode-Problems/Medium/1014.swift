//
//  1014.swift - Best Sightseeing Pair
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/best-sightseeing-pair/
//  Category : Array, Dynamic Programming
//
//  Created by Thomas Heinis on 30/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P1014 {
  class Solution {
    func maxScoreSightseeingPair(_ values: [Int]) -> Int {
      var maxScore = 0
      var maxLeft = values[0] + 0

      for i in 1 ..< values.count {
        maxScore = max(maxScore, maxLeft + values[i] - i)
        maxLeft = max(maxLeft, values[i] + i)
      }
      return maxScore
    }
  }

  static func getSolution() {
    let values = [8, 1, 5, 2, 6]
    print(Solution().maxScoreSightseeingPair(values))
  }
}
