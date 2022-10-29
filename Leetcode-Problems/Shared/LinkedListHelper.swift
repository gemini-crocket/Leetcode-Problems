//
//  LinkedListHelper.swift
//  leetcode-swift
//
//  Created by Tianyu Wang on 16/6/29.
//  GitHub   :  http://github.com/wty21cn
//  Website  :  http://wty.im
//  LinkedIn :  https://www.linkedin.com/in/wty21cn
//  E-mail   :  mailto:wty21cn@gmail.com

protocol ListNodePrintable {
  func presentation() -> String
  func successor() -> ListNodePrintable?
}

enum LinkedListHelper {
  static func buildLinkedList(withNodes nodes: [Int]) -> ListNode? {
    var root: ListNode?
    var listNode: ListNode?
    for node in nodes {
      if listNode != nil {
        listNode!.next = ListNode(node)
        listNode = listNode!.next
      } else {
        listNode = ListNode(node)
        root = listNode
      }
    }
    return root
  }
}

extension LinkedListHelper {
  private static let indent = "-->"

  static func getStructureDescription(forNode node: ListNodePrintable?) -> String {
    var description = ""
    if var node = node {
      while true {
        description += node.presentation()
        if let successor = node.successor() {
          description += indent
          node = successor
        } else {
          break
        }
      }
    } else {
      description = "nil"
    }
    return description
  }
}
