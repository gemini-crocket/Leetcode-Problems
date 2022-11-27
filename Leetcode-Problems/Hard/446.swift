//
//  446.swift - Arithmetic Slices II - Subsequence
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/arithmetic-slices-ii-subsequence/
//  Category : Array, Dynamic Programming
//
//  Created by Thomas Heinis on 27/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

// Thanks to LeetCodeWithMonu <https://youtu.be/1Oyws7BK49o>

enum P446 {
  class Solution {
    func numberOfArithmeticSlices(_ numbers: [Int]) -> Int {
      let numbersCount = numbers.count

      var slicesCount = 0
      var mapsArray = Array(repeating: [Int: Int](), count: numbersCount)

      for pointer1 in 1 ..< numbersCount {
        for pointer2 in 0 ..< pointer1 {
          let difference = numbers[pointer2] - numbers[pointer1]
          let counter1 = mapsArray[pointer1][difference, default: 0]
          let counter2 = mapsArray[pointer2][difference, default: 0]
          slicesCount += counter2
          mapsArray[pointer1][difference] = counter1 + counter2 + 1
        }
      }
      return slicesCount
    }
  }

  static func getSolution() {
    let nums = [2, 4, 6, 8, 10]
    print(Solution().numberOfArithmeticSlices(nums))
  }
}
