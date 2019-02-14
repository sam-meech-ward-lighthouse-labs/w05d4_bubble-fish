//
//  ViewControllerTests.swift
//  W06D5Tests
//
//  Created by Sam Meech-Ward on 2019-02-14.
//  Copyright © 2019 meech-ward. All rights reserved.
//

import XCTest
@testable import W06D5

class ViewControllerTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

  func test_ViewController_ShouldBeTableViewsDataSource() {
    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
    let viewController = storyBoard.instantiateInitialViewController() as! ViewController
    _ = viewController.view

    XCTAssertTrue(viewController.tableView.dataSource === viewController, "the view controller's table view's data source isn't the view controller")
  }

}
