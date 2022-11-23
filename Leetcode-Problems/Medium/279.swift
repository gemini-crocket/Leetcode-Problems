//
//  279.swift - Perfect Squares
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/perfect-squares/
//  Category : Math, Dynamic Programming, Breadth-First Search
//
//  Created by Thomas Heinis on 22/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P279 {
  class Solution {
    func numSquares(_ number: Int) -> Int {
      var visited = Array(repeating: false, count: number + 1)
      var queue: [Int] = [number]
      var count = 0

      visited[number] = true

      while !queue.isEmpty {
        for _ in 0 ..< queue.count {
          let current = queue.removeFirst()

          if current == 0 {
            return count
          }

          var i = 1

          while current - i * i >= 0 {
            if !visited[current - i * i] {
              queue.append(current - i * i)
              visited[current - i * i] = true
            }
            i += 1
          }
        }
        count += 1
      }
      return count
    }
  }

  static func getSolution() {
    let number = 12
    print(Solution().numSquares(number))
  }
}
