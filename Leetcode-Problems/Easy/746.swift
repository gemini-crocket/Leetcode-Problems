//
//  746.swift - Min Cost Climbing Stairs
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/min-cost-climbing-stairs/
//  Category  : Array, Dynamic Programming
//
//  Created by Thomas Heinis on 30/10/2022.
//  GitHub    : https://github.com/hoseiocean
//  LinkedIn  : https://linkedin.com/in/hoseiocean
//  E-mail    : mailto:thomas.heinis@ik.me
//

/*
 
  You are given an integer array cost where cost[i] is the cost of ith step
  on a staircase. Once you pay the cost, you can either climb one or two steps.
  You can either start from the step with index 0, or the step with index 1.
  Return the minimum cost to reach the top of the floor.
 
  */

enum P746 {
  class Solution {
    func minCostClimbingStairs(_ costs: [Int]) -> Int {
      guard !costs.isEmpty else { return 0 }
      guard costs.count > 2 else { return costs.min() ?? 0 }

      var first = 0
      var second = 0

      for i in 2 ..< costs.count {
        let temp = min(first + costs[i - 2], second + costs[i - 1])
        first = second
        second = temp
      }

      let count = costs.count
      let result = min(first + costs[count - 2], second + costs[count - 1])

      return result
    }
  }

  static func getSolution() {
    let costs = [10, 15, 20]
    print(Solution().minCostClimbingStairs(costs))
  }
}
