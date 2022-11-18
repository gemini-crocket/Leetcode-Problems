//
//  1672.swift - Richest Customer Wealth
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/richest-customer-wealth/
//  Category : Array, Matrix
//
//  Created by Thomas Heinis on 18/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P1672 {
  class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
      return accounts.reduce(0) { max($0, $1.reduce(0) { $0 + $1 }) }
    }
  }

  static func getSolution() {
    let accounts = [[2, 8, 7], [7, 1, 3], [1, 9, 5]]
    print(Solution().maximumWealth(accounts))
  }
}
