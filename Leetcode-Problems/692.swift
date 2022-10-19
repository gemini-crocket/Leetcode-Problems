//
//  692.swift : Top K Frequent Words
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 19/10/2022.
//

class P692: Solution {
  func topKFrequent(_ words: [String], _ k: Int) -> [String] {
    var map: [String:Int] = [:]

    for word in words {
      map[word] = map[word, default: 0] + 1
    }

    var sorted = map.sorted { a,b in
      print("a \(a) b \(b)")
      if a.value == b.value {
        return a > b
      } else {
        return a.value < b.value
      }
    }

    var result: [String] = []
    sorted = sorted.reversed()

    for i in 0 ..< k {
      let (key, _) = sorted[i]
      result.append(key)
    }

    return result
  }
}
