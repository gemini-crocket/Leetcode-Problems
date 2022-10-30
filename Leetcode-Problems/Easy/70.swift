//
//  70.swift - Climbing Stairs
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/climbing-stairs/
//  Category  : Math, Dynamic Programming, Memoization
//
//  Created by Thomas Heinis on 30/10/2022.
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
      if stairsNumber == 1 {
        return 1
      }

      var first = 1
      var second = 2

      for _ in 3 ... stairsNumber {
        let third = first + second
        first = second
        second = third
      }

      return second
    }
  }

  static func getSolution() {
    let stairsNumber = 20
    print(Solution().climbStairs(stairsNumber))
  }
}
