//
//  587.swift - Erect the Fence
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/erect-the-fence/
//  Category : Array, Math, Geometry
//
//  Created by Thomas Heinis on 20/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P587 {
  class Solution {
    func orientation(_ secondPreviousPoint: [Int], _ firstPreviousPoint: [Int], _ currentPoint: [Int]) -> Int {
      let lhs = (firstPreviousPoint[1] - secondPreviousPoint[1]) * (currentPoint[0] - firstPreviousPoint[0])
      let rhs = (firstPreviousPoint[0] - secondPreviousPoint[0]) * (currentPoint[1] - firstPreviousPoint[1])
      return lhs - rhs
    }

    func outerTrees(_ points: [[Int]]) -> [[Int]] {
      let points = points.sorted { pt1, pt2 in
        pt1[0] < pt2[0] || pt1[0] == pt2[0] && pt1[1] < pt2[1]
      }

      var hull: [[Int]] = []

      for point in points {
        while hull.count >= 2 && orientation(hull[hull.count - 2], hull[hull.count - 1], point) > 0 {
          hull.removeLast()
        }
        hull.append(point)
      }

      for point in points.lazy.reversed() {
        while hull.count >= 2 && orientation(hull[hull.count - 2], hull[hull.count - 1], point) > 0 {
          hull.removeLast()
        }
        hull.append(point)
      }

      return Array(Set(hull))
    }
  }

  static func getSolution() {
    let points = [[3, 7], [6, 8], [7, 8], [11, 10], [4, 3], [8, 5], [7, 13], [4, 13]]
    print(Solution().outerTrees(points))
  }
}
