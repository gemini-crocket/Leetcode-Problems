//
//  ListNode.swift
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 23/10/2022.
//
// Definition for singly-linked list.
// Provided by Leetcode

public class ListNode: ListNodePrintable, CustomStringConvertible {
  public var val: Int
  public var next: ListNode?

  public init() {
    self.val = 0
    self.next = nil
  }

  public init(_ val: Int) {
    self.val = val
    self.next = nil
  }

  public init(_ val: Int, _ next: ListNode?) {
    self.val = val
    self.next = next
  }

  //MARK: - ListNodePrintable Protocol

  func presentation() -> String {
    return "\(val)"
  }

  func successor() -> ListNodePrintable? {
    return next
  }

  //MARK: - CustomStringConvertible Protocol {

  public var description: String {
    return LinkedListHelper.getStructureDescription(forNode: self)
  }
}
