//
//  387.swift : First Unique Character in a String
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 21/10/2022.
//

class P387: Solution {
  func firstUniqChar(_ s: String) -> Int {
    var map: [Character: [Int]] = [:]

    for (index, element) in s.enumerated() {
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
