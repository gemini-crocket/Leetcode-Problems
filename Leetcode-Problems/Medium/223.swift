//
//  223.swift - Rectangle Area
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/rectangle-area/
//  Category : Math, Geometry
//
//  Created by Thomas Heinis on 17/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P223 {
  class Solution {
    func computeArea(_ ax1: Int, _ ay1: Int, _ ax2: Int, _ ay2: Int, _ bx1: Int, _ by1: Int, _ bx2: Int, _ by2: Int) -> Int {
      let areaOfRectangleA = (ay2 - ay1) * (ax2 - ax1)
      let areaOfRectangleB = (by2 - by1) * (bx2 - bx1)

      let leftPoint = max(ax1, bx1)
      let rightPoint = min(ax2, bx2)
      let xOverlap = rightPoint - leftPoint

      let topPoint = min(ay2, by2)
      let bottomPoint = max(ay1, by1)
      let yOverlap = topPoint - bottomPoint

      var areaOfOverlap = 0
      if xOverlap > 0 && yOverlap > 0 {
        areaOfOverlap = xOverlap * yOverlap
      }

      return areaOfRectangleA + areaOfRectangleB - areaOfOverlap
    }
  }

  static func getSolution() {
    let ax1 = -3, ay1 = 0, ax2 = 3, ay2 = 4, bx1 = 0, by1 = -1, bx2 = 9, by2 = 2
    print(Solution().computeArea(ax1, ay1, ax2, ay2, bx1, by1, bx2, by2))
  }
}
