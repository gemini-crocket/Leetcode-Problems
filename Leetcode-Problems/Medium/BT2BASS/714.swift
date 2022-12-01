//
//  714.swift - Best Time to Buy and Sell Stock with Transaction Fee
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-transaction-fee/
//  Category : Array, Dynamic Programming, Greedy
//
//  Created by Thomas Heinis on 01/12/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P714 {
  class Solution {
    func maxProfit(_ prices: [Int], _ fee: Int) -> Int {
      var maxProfitWithoutShare = 0, maxProfitWithShare = -prices[0]

      for i in 1 ..< prices.count {
        let price = prices[i]
        maxProfitWithoutShare = max(maxProfitWithoutShare, maxProfitWithShare + price - fee)
        maxProfitWithShare = max(maxProfitWithShare, maxProfitWithoutShare - price)
      }

      return max(maxProfitWithoutShare, maxProfitWithShare)
    }
  }

  static func getSolution() {
    let prices = [1, 3, 7, 5, 10, 3], fee = 3
    print(Solution().maxProfit(prices, fee))
  }
}
