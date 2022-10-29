//
//  121.swift : Best Time to Buy and Sell Stock
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 18/10/2022.
//  GitHub    :  https://github.com/hoseiocean
//  LinkedIn  :  https://linkedin.com/in/hoseiocean
//  E-mail    :  mailto:thomas.heinis@ik.me
//

enum P121 {
  class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
      if prices.isEmpty {
        return 0
      }

      var maxProfit = 0
      var minValue = prices[0]

      for i in 1..<prices.count {
        if minValue > prices[i] {
          minValue = prices[i]
        }

        if prices[i] > minValue {
          let profit = prices[i] - minValue

          if profit > maxProfit {
            maxProfit = profit
          }
        }
      }
      return maxProfit
    }
  }
}
