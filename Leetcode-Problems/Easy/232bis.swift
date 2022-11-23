//
//  232bis.swift - Implement Queue using Stacks
//  Leetcode-Problems
//  Source    :  https://leetcode.com/problems/implement-queue-using-stacks/
//  Category  :  Design, Queue, Stack
//
//  Created by Thomas Heinis on 24/10/2022, last updated on 23/11/2022
//  GitHub    :  https://github.com/hoseiocean
//  LinkedIn  :  https://linkedin.com/in/hoseiocean
//  E-mail    :  mailto:thomas.heinis@ik.me
//

// The queue requested by Leetcode is offering limited use. Here is an improved one.

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

enum P232bis {
  class Queue<Element> {
    private var stack1: [Element]
    private var stack2: [Element]

    init() {
      stack1 = []
      stack2 = []
    }

    func enqueue(_ element: Element) {
      stack1.append(element)
    }

    func dequeue() -> Element? {
      if stack2.isEmpty {
        while let element = stack1.popLast() {
          stack2.append(element)
        }
      }
      return stack2.popLast()
    }

    func peek() -> Element? {
      stack2.last ?? stack1.first
    }

    var isEmpty: Bool {
      stack1.isEmpty && stack2.isEmpty
    }

    static func getSolution() {
    }
  }
}
