//
//  1491.swift - Average Salary Excluding the Minimum and Maximum Salary
//  Leetcode-Problems
//  Source    : https://leetcode.com/problems/average-salary-excluding-the-minimum-and-maximum-salary/
//  Category  : Array, Sorting
//
//  Created by Thomas Heinis on 31/10/2022.
//  GitHub    : https://github.com/hoseiocean
//  LinkedIn  : https://linkedin.com/in/hoseiocean
//  E-mail    : mailto:thomas.heinis@ik.me
//

/*
  You are given an array of unique integers salary where
  salary[i] is the salary of the ith employee.

  Return the average salary of employees excluding the minimum
  and maximum salary. Answers within 10-5 of the actual answer
  will be accepted.
  */

enum P1491 {
  class Solution {
    func average(_ salaries: [Int]) -> Double {
      let salaries = salaries.map { Double($0) }
      let salariesCount = salaries.count
      var total: Double = 0
      var maxSalary = salaries[0]
      var minSalary = salaries[0]

      for i in 0 ..< salariesCount {
        total += salaries[i]
        maxSalary = max(maxSalary, salaries[i])
        minSalary = min(minSalary, salaries[i])
      }

      return (total - (maxSalary + minSalary)) / Double(salariesCount - 2)
    }
  }

  static func getSolution() {
    let salaries = [4000, 3000, 1000, 2000]
    print(Solution().average(salaries))
  }
}
