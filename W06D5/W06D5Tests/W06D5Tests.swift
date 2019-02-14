//
//  W06D5Tests.swift
//  W06D5Tests
//
//  Created by Sam Meech-Ward on 2019-02-14.
//  Copyright © 2019 meech-ward. All rights reserved.
//

import XCTest
@testable import W06D5

class W06D5Tests: XCTestCase {

  override func setUp() {
      // Put setup code here. This method is called before the invocation of each test method in the class.
  }

  override func tearDown() {
      // Put teardown code here. This method is called after the invocation of each test method in the class.
  }
  
  func test_SpaceShipSpeed_GivenMilleniumFalcon_ShouldReturn100() {
    let ship = SpaceShip(name: "Millenium Falcon")
    XCTAssertEqual(ship.speed(), 100)
  }
  
  func test_SpaceShipSpeed_GivenLola_ShouldReturn12() {
    let ship = SpaceShip(name: "Lola")
    XCTAssertEqual(ship.speed(), 12)
  }
  
  func test_SpaceShipSpeed_GivenEnterperise_ShouldReturn101() {
    let ship = SpaceShip(name: "Enterprise")
    XCTAssertEqual(ship.speed(), 101)
  }
  
  func test_SpaceShipSpeed_GivenBadValue_ShouldReturnNegative1() {
    XCTAssertEqual(SpaceShip(name: "").speed(), -1)
    XCTAssertEqual(SpaceShip(name: "x").speed(), -1)
    XCTAssertEqual(SpaceShip(name: "Jenny").speed(), -1)
    XCTAssertEqual(SpaceShip(name: "Jenny From The Blockchain").speed(), -1)
  }
  
}


