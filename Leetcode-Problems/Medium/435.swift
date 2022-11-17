//
//  435.swift - Non-overlapping Intervals
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/non-overlapping-intervals/
//  Category : Array, Dynamic Programming, Greedy, Sorting
//
//  Created by Thomas Heinis on 16/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P435 {
  class Solution {
    func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
      if intervals.isEmpty {
        return 0
      }

      let sortedIntervals = intervals.sorted { interval1, interval2 -> Bool in
        return interval1[1] < interval2[1]
      }

      var end = sortedIntervals[0][1]
      var overlapCount = 0

      for i in 1 ..< sortedIntervals.count {
        if sortedIntervals[i][0] < end {
          overlapCount += 1
        } else {
          end = sortedIntervals[i][1]
        }
      }
      return overlapCount
    }
  }

  static func getSolution() {
    let intervals = [[1, 2], [2, 3], [3, 4], [1, 3]]
    print(Solution().eraseOverlapIntervals(intervals))
  }
}
