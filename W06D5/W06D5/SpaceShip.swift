//
//  SpaceShip.swift
//  W06D5
//
//  Created by Sam Meech-Ward on 2019-02-14.
//  Copyright © 2019 meech-ward. All rights reserved.
//

import Foundation

struct SpaceShip {
  let name: String
  
  func speed() -> Int {
    switch self.name {
    case "Millenium Falcon":
      return 100
    case "Enterprise":
      return 101
    case "Lola":
      return 12
    default:
      return -1
    }
  }
}


