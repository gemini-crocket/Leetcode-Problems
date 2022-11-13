//
//  EnaryTreePrinter.swift
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 08/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

// MARK: - Helper Protocol

enum EnaryTreeHelper {
  static func build(with values: [Int?], at index: Int = 0) -> Node? {
    guard let value = values[index] else { return nil }

    let node = Node(value)
    let childrenIndices = getChildrenIndex(of: index, in: values)

    for index in childrenIndices {
      if let child = build(with: values, at: index) {
        node.children.append(child)
      }
    }
    return node
  }

  private static func getChildrenIndex(of index: Int, in values: [Int?]) -> [Int] {
    if values[index] == nil {
      return []
    }

    let nodesCount = values.prefix(index + 1).compactMap { $0 }.count

    var children: [Int] = []
    var parentsCount = 0
    var pointer = 0

    while pointer < values.endIndex && parentsCount <= nodesCount {
      if values[pointer] == nil {
        parentsCount += 1
      } else if parentsCount == nodesCount {
        children.append(pointer)
      }

      pointer += 1
    }

    return children
  }
}
