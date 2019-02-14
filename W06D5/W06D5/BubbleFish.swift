//
//  BubbleFish.swift
//  W06D5
//
//  Created by Sam Meech-Ward on 2019-02-14.
//  Copyright © 2019 meech-ward. All rights reserved.
//

import Foundation

struct BubbleFish {
  static let START_BUBBLES = 5
  
  var bubbles: Int = BubbleFish.START_BUBBLES
  
  mutating func dive() {
    bubbles -= 1
  }
}
