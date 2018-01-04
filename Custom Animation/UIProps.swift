//  Copyright © 2018 rtysiachnik. All rights reserved.

import UIKit

struct UIProps {
    var bottomView: ModelView
    var topView: ModelView
    var sideView: ModelView
    var centerView: ModelView
    
    init() {
        bottomView = ModelView()
        topView = ModelView()
        sideView = ModelView()
        centerView = ModelView()
    }
}
