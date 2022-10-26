//
//  TreeNode.swift
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 25/10/2022.
//
//  Definition for a binary tree node.
//  Provided by Leetcode
//  Additionnal functions by Tianyu Wang

public class TreeNode: BinaryTreeNodePrintable, CustomStringConvertible {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?

  public init() {
    self.val = 0
    self.left = nil
    self.right = nil
  }

  public init(_ val: Int) {
    self.val = val
    self.left = nil
    self.right = nil
  }

  public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
    self.val = val
    self.left = left
    self.right = right
  }

  //MARK: - BinaryTreeNodePrintable Protocol

  func leftSubTree() -> BinaryTreeNodePrintable? {
    return left
  }

  func rightSubTree() -> BinaryTreeNodePrintable? {
    return right
  }

  func presentation() -> String {
    return "\(val)"
  }

  //MARK: - CustomStringConvertible Protocol {

  public var description: String {
    return BinaryTreeHelper.getStructureDescription(forNode: self)
  }
}
