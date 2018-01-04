//  Copyright © 2018 rtysiachnik. All rights reserved.

import UIKit

class AlphaAnimatorProxy: NSObject {
    
    @IBOutlet var fadingVeiws: [UIView]!
    
    func activate() {
        for view in fadingVeiws {
            view.alpha = 1
        }
    }
    
    func deactivate() {
        for view in fadingVeiws {
            view.alpha = 0
        }
    }
}
