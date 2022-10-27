//
//  232.swift - Implement Queue using Stacks
//  Leetcode-Problems
//  Source    :  https://leetcode.com/problems/implement-queue-using-stacks/
//  Category  :  Design, Queue, Stack
//
//  Created by Thomas Heinis on 24/10/2022.
//  Github    :  https://github.com/thomas-heinis
//  Linkedin  :  https://linkedin.com/in/thomas-heinis
//  Mail      :  mailto:thomas.heinis@ik.me

/*
 *
 * Implement a first in first out (FIFO) queue using only two stacks.
 * The implemented queue should support all the functions of a normal queue.
 *
 * push(x) - Push element x to the back of queue.
 * pop() - Removes the element from in front of queue.
 * peek() - Get the front element.
 * empty() - Return whether the queue is empty.
 *
 * Notes:
 *
 * You must use only standard operations of a stack, which means only "push to top",
 * "peek/pop from top", "size", and "is empty" operations are valid.
 *
 * Depending on your language, stack may not be supported natively. You may simulate a
 * stack by using a list or deque (double-ended queue), as long as you use only
 * standard operations of a stack.
 *
 */

struct P232 {

  class MyQueue {
    private var stack1: [Int]
    private var stack2: [Int]
    private var front: Int?

    init() {
      stack1 = []
      stack2 = []
    }

    func push(_ x: Int) {
      if stack1.isEmpty {
        front = x
      }
      stack1.append(x)
    }

    func pop() -> Int {
      if stack2.isEmpty {
        while !stack1.isEmpty {
          stack2.append(stack1.popLast()!)
        }
      }
      return stack2.popLast()!
    }

    func peek() -> Int {
      if !stack2.isEmpty {
        return stack2.last!
      }

      return front!
    }

    func empty() -> Bool {
      return stack1.isEmpty && stack2.isEmpty
    }

    static func getSolution() -> Void {
    }
  }
}
