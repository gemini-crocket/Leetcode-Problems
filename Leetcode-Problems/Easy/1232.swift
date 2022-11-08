//
//  1232.swift - Check If It Is a Straight Line
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/check-if-it-is-a-straight-line/
//  Category : Array, Math, Geometry
//
//  Created by Thomas Heinis on 04/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P1232 {
  class Solution {
    func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
      guard !coordinates.isEmpty else { return false }

      let coordinatesCount = coordinates.count

      guard coordinatesCount >= 2 else { return false }

      let xDiff = coordinates[1][0] - coordinates[0][0]
      let yDiff = coordinates[1][1] - coordinates[0][1]

      for i in 2 ..< coordinatesCount {
        let xDist = coordinates[i][0] - coordinates[0][0]
        let yDist = coordinates[i][1] - coordinates[0][1]

        if xDist * yDiff != yDist * xDiff {
          return false
        }
      }

      return true
    }
  }

  static func getSolution() {
    let coordinates = [[1, 2], [2, 3], [3, 4], [4, 5], [5, 6], [6, 7]]
    print(Solution().checkStraightLine(coordinates))
  }
}
