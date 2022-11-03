//
//  1281.swift - Subtract the Product and Sum of Digits of an Integer
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/subtract-the-product-and-sum-of-digits-of-an-integer/
//  Category : Math
//
//  Created by Thomas Heinis on 01/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

/* Given an integer number n, return the difference between the product
  of its digits and the sum of its digits. */

enum P1281 {
  class Solution {
    func subtractProductAndSum(_ number: Int) -> Int {
      var number = number
      var sum = 0
      var product = 1

      while number != 0 {
        product *= number % 10
        sum += number % 10
        number /= 10
      }

      return product - sum
    }
  }

  static func getSolution() {
    let number = 234
    print(Solution().subtractProductAndSum(number))
  }
}
