//  Copyright © 2018 rtysiachnik. All rights reserved.

import UIKit

class ConstraintAnimatorProxy: NSObject {
    
    @IBOutlet var activeConstraint: NSLayoutConstraint!
    @IBOutlet var inactiveConstraint: NSLayoutConstraint!
    
    func activate(if expression: Bool) {
        inactiveConstraint.isActive = expression
        activeConstraint.isActive = !expression
    }
}
