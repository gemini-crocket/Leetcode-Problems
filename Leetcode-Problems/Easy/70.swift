//
//  70.swift - Climbing Stairs
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/climbing-stairs/
//  Category  : Math, Dynamic Programming, Memoization
//
//  Created by Thomas Heinis on 30/10/2022, last updated on 26/11/2022.
//  GitHub    : https://github.com/hoseiocean
//  LinkedIn  : https://linkedin.com/in/hoseiocean
//  E-mail    : mailto:thomas.heinis@ik.me
//

/*
  * You are climbing a staircase. It takes n steps to reach the top.
  * Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?
  */

enum P70 {
  class Solution {
    func climbStairs(_ stairsNumber: Int) -> Int {
      if stairsNumber < 2 {
        return 1
      }

      var previousPrevious = 1 // F(n - 2)
      var previous = 1 // F(n - 1)

      for _ in 2 ... stairsNumber {
        var next = previous + previousPrevious // F(n) = F(n - 1) + F(n - 2)
        previousPrevious = previous
        previous = next
      }
      return previous
    }
  }

  static func getSolution() {
    let stairsNumber = 20
    print(Solution().climbStairs(stairsNumber))
  }
}
