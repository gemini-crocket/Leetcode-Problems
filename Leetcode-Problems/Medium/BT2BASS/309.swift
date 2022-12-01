//
//  309.swift - Best Time to Buy and Sell Stock with Cooldown
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/best-time-to-buy-and-sell-stock-with-cooldown/
//  Category : Array, Dynamic Programming
//
//  Created by Thomas Heinis on 01/12/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P309 {
  class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
      var sold = Int.min, held = Int.min, reset = 0

      for price in prices {
        var previousSold = sold

        sold = held + price
        held = max(held, reset - price)
        reset = max(reset, previousSold)
      }

      return max(sold, reset)
    }
  }

  static func getSolution() {
    let prices = [1, 2, 3, 0, 2]
    print(Solution().maxProfit(prices))
  }
}
