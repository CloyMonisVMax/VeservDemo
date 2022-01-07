//
//  SimpleAdditonTests.swift
//  VeservDemoTests
//
//  Created by Cloy Monis on 07/01/22.
//

import XCTest
@testable import VeservDemo

class SimpleAdditonTests: XCTestCase {
    var sut: SimpleAddition?
    override func setUpWithError() throws {
        sut = SimpleAddition()
    }
    override func tearDownWithError() throws {
        
    }
    func testBasics(){
        guard let sut = sut else{
            XCTFail("init falied")
            return
        }
        let val = 2
        let res = sut.execute(lhs: val, rhs: val)
        XCTAssertTrue(res == (val + val))
    }
}
