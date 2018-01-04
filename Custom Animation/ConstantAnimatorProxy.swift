//  Copyright © 2018 rtysiachnik. All rights reserved.

import UIKit

class ConstraintAnimatorProxy: NSObject {
    
    @IBOutlet var activeConstraint: NSLayoutConstraint!
    @IBOutlet var inactiveConstraint: NSLayoutConstraint!
    
    func activate() {
        activeConstraint.isActive = true
        inactiveConstraint.isActive = false
    }
    
    func deactivate() {
        activeConstraint.isActive = false
        inactiveConstraint.isActive = true
    }
}
