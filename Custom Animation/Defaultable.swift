//  Copyright © 2018 rtysiachnik. All rights reserved.

import Foundation

public protocol Defaultable {
    init()
}

extension Defaultable {
    public init(builder: (inout Self) -> Void) {
        self.init()
        builder(&self)
    }
}

extension Views: Defaultable { }
