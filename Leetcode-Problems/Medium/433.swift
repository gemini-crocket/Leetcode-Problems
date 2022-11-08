//
//  433.swift - Minimum Genetic Mutation
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/minimum-genetic-mutation/
//  Category : Hash Table, String, Breadth-First Search
//
//  Created by Thomas Heinis on 04/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

/* A gene string can be represented by an 8-character long string,
  with choices from 'A', 'C', 'G', and 'T'.

  Suppose we need to investigate a mutation from a gene string
  startGene to a gene string endGene where one mutation is defined
  as one single character changed in the gene string.

  For example, "AACCGGTT" --> "AACCGGTA" is one mutation.
  There is also a gene bank "bank" that records all the valid gene
  mutations. A gene must be in bank to make it a valid gene string.

  Given the two gene strings startGene and endGene and the gene bank "bank",
  return the minimum number of mutations needed to mutate from startGene
  to endGene. If there is no such a mutation, return -1.

  Note that the starting point is assumed to be valid, so it might not be
  included in the bank. */

enum P433 {
  class Solution {
    func minMutation(_ startGene: String, _ endGene: String, _ bank: [String]) -> Int {
      guard bank.contains(endGene) else { return -1 }

      let startGeneCharactersArray = Array(startGene)
      let endGeneCharactersArray = Array(endGene)
      let bankCharactersArray = bank.map { Array($0) }

      var minMutation = 0
      var seen = [startGeneCharactersArray]
      var queue = [startGeneCharactersArray]

      while !queue.isEmpty {
        minMutation += 1
        var nextLevelCharacters: [[Character]] = []

        for startCharacters in queue {
          for endCharacters in bankCharactersArray where !seen.contains(endCharacters) {
            var differentCharactersCount = 0

            for i in 0 ..< 8 where endCharacters[i] != startCharacters[i] {
              differentCharactersCount += 1
            }

            if differentCharactersCount == 1 {
              if endCharacters == endGeneCharactersArray {
                return minMutation
              }

              seen.append(endCharacters)
              nextLevelCharacters.append(endCharacters)
            }
          }
        }

        queue = nextLevelCharacters
      }

      return -1
    }
  }

  static func getSolution() {
    let startGene = "AACCGGTT", endGene = "AAACGGTA", bank = ["AACCGGTA", "AACCGCTA", "AAACGGTA"]
    print(Solution().minMutation(startGene, endGene, bank))
  }
}
