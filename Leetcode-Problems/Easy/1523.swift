//
//  1523.swift - Count Odd Numbers in an Interval Range
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/count-odd-numbers-in-an-interval-range/
//  Category  : Math
//
//  Created by Thomas Heinis on 31/10/2022.
//  GitHub    : https://github.com/hoseiocean
//  LinkedIn  : https://linkedin.com/in/hoseiocean
//  E-mail    : mailto:thomas.heinis@ik.me
//

/*
  Given two non-negative integers low and high.
  Return the count of odd numbers between low
  and high (inclusive).
  */

enum P1523 {
  class Solution {
    func countOdds(_ low: Int, _ high: Int) -> Int {
      let difference = high - low
      var oddsCount = difference / 2

      if low % 2 != 0 || high % 2 != 0 {
        oddsCount += 1
      }

      return oddsCount
    }
  }

  static func getSolution() {
    let low = 3
    let high = 7
    print(Solution().countOdds(low, high))
  }
}
