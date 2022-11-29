//
//  152.swift - Maximum Product Subarray
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/maximum-product-subarray/
//  Category : Array, Dynamic Programming
//
//  Created by Thomas Heinis on 29/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P152 {
  class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
      if nums.isEmpty {
        return 0
      }

      var maxProduct = nums[0]
      var maxSoFar = 1
      var minSoFar = 1

      for num in nums {
        let products = [maxSoFar * num, minSoFar * num, num]
        guard let maxEndingHere = products.max(),
          let minEndingHere = products.min() else { return -1 }
        maxSoFar = maxEndingHere
        minSoFar = minEndingHere

        maxProduct = max(maxProduct, maxSoFar)
      }

      return maxProduct
    }
  }

  static func getSolution() {
    let nums = [2, 3, -2, 4]
    print(Solution().maxProduct(nums))
  }
}
