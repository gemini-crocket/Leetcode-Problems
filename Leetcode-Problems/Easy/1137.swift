//
//  1137.swift - N-th Tribonacci Number
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/n-th-tribonacci-number/
//  Category  : Math, Dynamic Programming, Memoization
//
//  Created by Thomas Heinis on 29/10/2022, last updated on 24/11/2022.
//  GitHub    :  https://github.com/hoseiocean
//  LinkedIn  :  https://linkedin.com/in/hoseiocean
//  E-mail    :  mailto:thomas.heinis@ik.me
//

/*
  * The Tribonacci sequence Tn is defined as follows:
  *
  * T0 = 0, T1 = 1, T2 = 1, and Tn+3 = Tn + Tn+1 + Tn+2 for n >= 0.
  *
  * Given n, return the value of Tn.
  *
  * Input: n = 4
  * Output: 4
  * Explanation:
  * T_3 = 0 + 1 + 1 = 2
  * T_4 = 1 + 1 + 2 = 4
  */

enum P1137 {
  class Solution {
    private var map: [Int: Int] = [0: 0, 1: 1, 2: 1]

    func tribonacci(_ number: Int) -> Int {
      map[number] ?? {
        map[number - 1] = tribonacci(number - 1)
        if let num1 = map[number - 1], let num2 = map[number - 2], let num3 = map[number - 3] {
          return num1 + num2 + num3
        }

        return number
      }()
    }
  }

  static func getSolution() {
    let number = 25
    print(Solution().tribonacci(number))
  }
}
