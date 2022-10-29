//
//  383.swift : Ransom Note
//  Leetcode-Problems
//
//  Created by Thomas Heinis on 21/10/2022.
//  GitHub    :  https://github.com/hoseiocean
//  LinkedIn  :  https://linkedin.com/in/hoseiocean
//  E-mail    :  mailto:thomas.heinis@ik.me
//

enum P383 {
  class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
      var mappedMagazine: [Character: Int] = [:]

      for character in magazine {
        mappedMagazine[character] = (mappedMagazine[character] ?? 0) + 1
      }

      for character in ransomNote {
        if mappedMagazine[character] == nil || mappedMagazine[character]! == 0 {
          return false
        }

        mappedMagazine[character]! -= 1
      }

      return true
    }
  }
}
