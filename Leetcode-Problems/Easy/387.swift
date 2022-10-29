//
//  387.swift : First Unique Character in a String
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 21/10/2022.
//  GitHub    :  https://github.com/hoseiocean
//  LinkedIn  :  https://linkedin.com/in/hoseiocean
//  E-mail    :  mailto:thomas.heinis@ik.me
//

enum P387 {
  class Solution {
    func firstUniqChar(_ string: String) -> Int {
      var map: [Character: [Int]] = [:]

      for (index, element) in string.enumerated() {
        map[element, default: []].append(index)
      }

      var current: Int?

      for indexes in map.values {
        guard indexes.count == 1 else { continue }
        current = min(current ?? Int.max, indexes.first!)
      }

      return current ?? -1
    }
  }
}
