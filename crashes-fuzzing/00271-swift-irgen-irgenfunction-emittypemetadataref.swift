// Distributed under the terms of the MIT license
// Test case submitted to project by https://github.com/practicalswift (practicalswift)
// https://devforums.apple.com/message/1051132

import Foundation
class A : NSObject {
    func b<T: A>() -> [T] {
        return [T]()
    }
}
