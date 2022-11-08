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
  static func build(with nodesValues: [Int?] = [1]) -> Node? {
    let nodesRelations = getNodesRelations(nodesValues)
    return build(with: 1, in: nodesRelations)
  }

  private static func build(with nodeValue: Int? = 1, in nodesRelations: [Int: Int]) -> Node? {
    if let nodeValue {
      let node = Node(nodeValue)
      let children = getChildren(of: nodeValue, in: nodesRelations)

      for i in 0 ..< children.count {
        if let child = build(with: children[i], in: nodesRelations) {
          node.children.append(child)
        }
      }

      return node
    }
    return nil
  }

  private static func getChildren(of nodeValue: Int, in nodeRelations: [Int: Int]) -> [Int] {
    var children: [Int] = []

    for (child, parent) in nodeRelations where parent == nodeValue && child != 0 {
      children.append(child)
    }

    return children.sorted()
  }

  private static func getNodesRelations(_ values: [Int?]) -> [Int: Int] {
    var nodeRelations: [Int: Int] = [:]
    var parentValue = 0

    for i in 0 ..< values.count {
      if let value = values[i] {
        nodeRelations[value] = parentValue
      } else {
        parentValue += 1
      }
    }
    return nodeRelations
  }
}
