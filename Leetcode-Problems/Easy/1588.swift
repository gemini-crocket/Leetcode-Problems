//
//  1588.swift - Sum of All Odd Length Subarrays
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/sum-of-all-odd-length-subarrays/
//  Category : Array, Math, Prefix Sum
//
//  Created by Thomas Heinis on 18/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P1588 {
  class Solution {
    func sumOddLengthSubarrays(_ integersArray: [Int]) -> Int {
      let integersCount = integersArray.count
      var sum = 0

      for i in 0 ..< integersCount {
        let leftOdds = i / 2 + 1
        let rightOdds = (integersCount - i - 1) / 2 + 1
        let leftEvens = (i + 1) / 2
        let rightEvens = (integersCount - i) / 2

        sum += integersArray[i] * (leftOdds * rightOdds + leftEvens * rightEvens)
      }

      return sum
    }
  }

  static func getSolution() {
    let integersArray = [1, 4, 2, 5, 3]
    print(Solution().sumOddLengthSubarrays(integersArray))
  }
}
