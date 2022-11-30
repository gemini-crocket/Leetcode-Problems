//
//  122.swift - Best Time to Buy and Sell Stock II
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/
//  Category : Array, Dynamic Programming, Greedy
//
//  Created by Thomas Heinis on 30/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P122 {
  class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
      let range = 1 ..< prices.count
      var maxProfit = 0

      for i in range where prices[i] > prices[i - 1] {
        maxProfit += prices[i] - prices[i - 1]
      }

      return maxProfit
    }
  }

  static func getSolution() {
    let prices = [7, 1, 5, 3, 6, 4]
    print(Solution().maxProfit(prices))
  }
}
