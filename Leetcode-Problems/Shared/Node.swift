//
//  Node.swift
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 04/11/2022.
//
//  Definition for a node of a n-ary tree.
//  Provided by Leetcode
//  

public class Node {
  public var val: Int
  public var children: [Node]

  public init() {
    self.val = 0
    self.children = []
  }

  public init(_ val: Int) {
    self.val = val
    self.children = []
  }

  public init(_ val: Int, _ children: [Node]) {
    self.val = val
    self.children = children
  }
}
