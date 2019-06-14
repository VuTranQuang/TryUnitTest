//
//  TryUnitTestTests.swift
//  TryUnitTestTests
//
//  Created by RTC-HN154 on 6/14/19.
//  Copyright © 2019 RTC-HN154. All rights reserved.
//

import XCTest
@testable import TryUnitTest
class TryUnitTestTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        // Các phương thức sẽ được gọi trước khi các func test case được chạy(like: ViewDidLoad)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        // Các mục tại đây sẽ được chạy sau khi các func test case chạy xong
        
    }
    func testArray_Nil() {
        let expectResult = false
        let arrayA = ["w", "q"]
        let actualResult = (arrayA as NSArray).isMatch(withArray: nil)
        XCTAssertEqual(expectResult, actualResult)
    }
    
    func testArray_NotEqual() {
        let expectResult = false
        let arrayA = ["3", "2", "1"]
        let actualResult = (arrayA as NSArray).isMatch(withArray: ["4", "5", "3"])
        XCTAssertEqual(expectResult, actualResult)
    }
    
    func testArray_Equal() {
        let expectResult = true
        let arrayA = ["3", "2", "1"]
        let actualResult = (arrayA as NSArray).isMatch(withArray: ["1", "2", "3"])
        XCTAssertEqual(expectResult, actualResult)
    }
    
    func testArrayA_NotString() {
        let expectResult = false
        let arrayA = [1, 3, 5]
        let actualResult = (arrayA as NSArray).isMatch(withArray: ["1", "3", "5"])
        XCTAssertEqual(expectResult, actualResult)
    }
    
    func testArrayB_NotString() {
        let expectResult = false
        let arrayA = ["1", "3", "5"]
        let actualResult = (arrayA as NSArray).isMatch(withArray: [1, 3, 5])
        XCTAssertEqual(expectResult, actualResult)
    }
    func testArray_NotString() {
        let expectResult = false
        let arrayA = [1, 3, 5]
        let actualResult = (arrayA as NSArray).isMatch(withArray: [1, 3, 5])
        XCTAssertEqual(expectResult, actualResult)
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        // Func test chức năng
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        // Cần kiểm tra hiệu xuất
        self.measure {
            // Put the code you want to measure the time of here.
            // Đặt code kiểm tra time chạy
        }
    }

}
