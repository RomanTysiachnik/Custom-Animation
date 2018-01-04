//  Copyright © 2018 rtysiachnik. All rights reserved.

import UIKit

class AlphaAnimatorProxy: NSObject {
    
    @IBOutlet var fadingVeiw: UIView!
    
    func activate(if expression: Bool) {
        fadingVeiw.alpha = expression ? 0 : 1
    }
}
