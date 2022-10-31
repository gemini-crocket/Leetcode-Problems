//
//  56.swift - Merge Intervals
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/merge-intervals/
//  Category  : Array, Sorting
//
//  Created by Thomas Heinis on 31/10/2022.
//  GitHub    : https://github.com/hoseiocean
//  LinkedIn  : https://linkedin.com/in/hoseiocean
//  E-mail    : mailto:thomas.heinis@ik.me
//

/*
  Given an array of intervals where intervals[i] = [starti, endi],
  merge all overlapping intervals, and return an array
  of the non-overlapping intervals that cover all the intervals
  in the input.

  Example 1:
  Input: intervals = [[1,3],[2,6],[8,10],[15,18]]
  Output: [[1,6],[8,10],[15,18]]
  Explanation: Since intervals [1,3] and [2,6] overlap, merge them into [1,6].

  Example 2:
  Input: intervals = [[1,4],[4,5]]
  Output: [[1,5]]
  Explanation: Intervals [1,4] and [4,5] are considered overlapping.
  */

enum P56 {
  class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
      var mergedIntervals: [[Int]] = []
      let sortedIntervals = intervals.sorted {
        $0[0] < $1[0]
      }

      for interval in sortedIntervals {
        if let lastMergedInterval = mergedIntervals.last, lastMergedInterval[1] >= interval[0] {
          let lastIntervalIndex = mergedIntervals.endIndex - 1
          mergedIntervals[lastIntervalIndex][1] = max(lastMergedInterval[1], interval[1])
        } else {
          mergedIntervals.append(interval)
        }
      }

      return mergedIntervals
    }
  }

  static func getSolution() {
    let intervals = [[1, 3], [2, 6], [8, 10], [15, 18]]
    print(Solution().merge(intervals))
  }
}
