//
//  1603.swift - Design Parking System
//  Leetcode-Problems
//  Source   : https://leetcode.com/problems/design-parking-system/
//  Category : Design, Simulation, Counting
//
//  Created by Thomas Heinis on 24/11/2022.
//  GitHub   : https://github.com/hoseiocean
//  LinkedIn : https://linkedin.com/in/hoseiocean
//  E-mail   : mailto:thomas.heinis@ik.me
//

enum P1603 {
  class ParkingSystem {
    private var map: [Int: Int] = [:]

    init(_ big: Int, _ medium: Int, _ small: Int) {
      [big, medium, small].enumerated().forEach {
        map[$0 + 1] = $1
      }
    }

    func addCar(_ carType: Int) -> Bool {
      map[carType, default: 1] -= 1
      return (map[carType] ?? 0) >= 0
    }
  }

  static func getSolution() {
    var parkingSystem = ParkingSystem(1, 1, 0)
    let add0 = parkingSystem.addCar(1)
    parkingSystem.addCar(2)
    let add1 = parkingSystem.addCar(3)
    let add2 = parkingSystem.addCar(1)
    print(add0)
    print(add1)
    print(add2)
  }
}
