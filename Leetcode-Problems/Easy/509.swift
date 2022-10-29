//
//  509.swift - Fibonacci Number
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/fibonacci-number/?envType=study-plan&id=dynamic-programming-i
//  Category  : Math, Dynamic Programming, Recursion, Memoization
//
//  Created by Thomas Heinis on 29/10/2022.
//  GitHub    :  https://github.com/hoseiocean
//  LinkedIn  :  https://linkedin.com/in/hoseiocean
//  E-mail    :  mailto:thomas.heinis@ik.me
//

/*
  * The Fibonacci numbers, commonly denoted F(n) form a sequence,
  * called the Fibonacci sequence, such that each number is the sum
  * of the two preceding ones, starting from 0 and 1. That is,
  *
  * F(0) = 0, F(1) = 1
  * F(n) = F(n - 1) + F(n - 2), for n > 1.
  * Given n, calculate F(n).
  *
  * Input: n = 4
  * Output: 3
  * Explanation: F(4) = F(3) + F(2) = 2 + 1 = 3.
  *
  */

enum P509 {
  class Solution {
    func fib(_ number: Int) -> Int {
      guard number >= 2 && number <= 30 else { return number }

      return fib(number - 1) + fib(number - 2)
    }
  }

  static func getSolution() {
    let number = 4
    print(Solution().fib(number))
  }
}
