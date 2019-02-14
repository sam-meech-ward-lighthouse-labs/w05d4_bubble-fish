//
//  BubbleFishTests.swift
//  W06D5Tests
//
//  Created by Sam Meech-Ward on 2019-02-14.
//  Copyright © 2019 meech-ward. All rights reserved.
//

import XCTest
@testable import W06D5

class BubbleFishTests: XCTestCase {
  
  var bubbleFish: BubbleFish!
  
  override func setUp() {
    bubbleFish = BubbleFish()
  }

  func test_CreateABubbleFish_ShouldHaveStartNumbeOfBubbles() {
    XCTAssertEqual(bubbleFish.bubbles, BubbleFish.START_BUBBLES)
  }
  
  func test_Dive_ShouldReduceNumberOfBubblesBy1() {
    let bubbles = bubbleFish.bubbles
    bubbleFish.dive()
    XCTAssertEqual(bubbleFish.bubbles, bubbles-1)
    bubbleFish.dive()
    XCTAssertEqual(bubbleFish.bubbles, bubbles-2)
    bubbleFish.dive()
    XCTAssertEqual(bubbleFish.bubbles, bubbles-3)
  }

}
