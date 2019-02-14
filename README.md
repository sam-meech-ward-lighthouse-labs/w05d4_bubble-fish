# Unit Testing

* Test a unit of code, could be a method. 
* It's not the only kind of testing.
* If you change something in your app, you have a magic button that tells you if you changes broke everything.
  - allow you freedom to refactor your code (improve your code) without having to manually test, or not test and just hope it worked. Freedom to change your code.
* There is a process for writing tests where you write the tests first.
* It's very important. 
* If you care about it working, it should have a unit test.
* sometimes people don't like it. Sometimes people love it.

* https://ios.compass.lighthouselabs.ca/days/w05d5
* https://ios.compass.lighthouselabs.ca/days/w05d5/activities/1159

## Return Value Tests

* test that a certain function is supposed to return a specific value, when called with specific input.
* Pure Functions

```swift
func multiply(a: Int, b: Int) -> Int {
  return a*b
}
```

```swift
func parse(json: [String: Any]) -> Dog {
  ...
  return dog
}
```

```swift
func speed(spaceShip: String) -> Int {
  switch spaceShip {
  case "Millenium Falcon":
    return 100
  case "Enterprise":
    return 101
  case "Lola":
    return 12
  default:
    return 0
  }
}
```

anything that **can** be written this way, **should** be written this way.

## State Tests

We call a method on an object that updates the object's state somehow.

```swift
var spaceShip = SpaceShip()
XCTAssertEqual(spaceShip.fuelPercent, 100)
spaceShip.warp()
XCTAssertEqual(spaceShip.fuelPercent, 50)
spaceShip.warp()
XCTAssertEqual(spaceShip.fuelPercent, 0)
```

## Interaction Tests (Behaviour Tests)

## Mock Objects & Dependency Injection

## View Controllers

```swift
_ = viewController.view
```

## Things you don't want to have to test

because they are difficult to test. or other reasons

* Network request.
  - the actual http request
* Database connections.
* IO (Input Output)

## TDD

Test Driven Development

* A programming **Discipline**
  - start by writing a test. but only write enough test to fail.
  - write just enough production code to make that test pass.
  - Flip back and forth between these two, until you have successfully tested your assertion.
  - Refactor


---

* BDD Framework: https://www.raywenderlich.com/5042-testing-using-a-bdd-framework

```swift
describe("space ship speed") { in
  context("given the millenium falcon") { in
    let expectedSpeed = 100
    it("should reuturn \(expectedSpeed)") { in
      XCTAssert(expectedSpeed, speed("melenium falcon"))
    }
  }
}
```

* Conference: https://www.youtube.com/watch?v=Jzlz3Bx-NzM

“The goal is clean code that works. Clean code that works is out of the reach of even the best programmers some of the time, and out of the reach of most programmers (like me) most of the time.Divide and conquer, baby. ” 
-- Kent Beck, Test-Driven Development
