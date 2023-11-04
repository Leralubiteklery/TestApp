//
//  TestAppTests.swift
//  SoundBarTests
//
//  Created by Lera Savchenko on 3.11.23.
//

import XCTest
@testable import TestApp

final class SoundBarTests: XCTestCase {

    var sut: SoundBar!
    
    override func setUp()  {
        super.setUp()
        sut = SoundBar()
    }

    override func tearDown()  {
        sut = nil
        super.tearDown()
    }

    func testSetVolumeShouldReturn0WhenLowestVolume()  {
        sut.setVolume(to: -1)
        XCTAssert(sut.volume == 0, "Lowest volume should be equal 0")
    }
    
    func testSetVolumeShouldReturn100WhenHighestVolume() {
        sut.setVolume(to: 100)
        XCTAssert(sut.volume == 100, "Highest volume should be equal 100")
    }

}
