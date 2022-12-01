//
//  380.swift - Insert Delete GetRandom O(1)
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/insert-delete-getrandom-o1/
//  Category : Array, Hash Table, Math, Design, Randomized
//
//  Created by Thomas Heinis on 29/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P380 {
  class RandomizedSet {
    private var map: [Int: Int]
    private var intArray: [Int]

    init() {
      map = [:]
      intArray = []
    }

    func insert(_ val: Int) -> Bool {
      if let _ = map[val] {
        return false
      }

      intArray.append(val)
      map[val] = intArray.count - 1
      return true
    }

    func remove(_ val: Int) -> Bool {
      guard let index = map[val] else { return false }

      map[val] = nil

      if index == intArray.count - 1 {
        intArray.removeLast()
      } else {
        let replaceVal = intArray.last ?? -1
        intArray.swapAt(index, intArray.count - 1)
        intArray.removeLast()
        map[replaceVal] = index
      }
      return true
    }

    func getRandom() -> Int {
      return intArray.randomElement() ?? -1
    }
  }
}
