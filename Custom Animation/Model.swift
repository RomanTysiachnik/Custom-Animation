//  Copyright © 2018 rtysiachnik. All rights reserved.

import UIKit

struct ModelView {
    private(set) public var isHidden: Bool = false
    
    mutating func changeHiddenStatus() {
        isHidden = !isHidden
    }
}
