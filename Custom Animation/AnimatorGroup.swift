//  Copyright © 2018 rtysiachnik. All rights reserved.

import UIKit

protocol Animators {
    func activate(if expression: Bool)
}

class AnimatorGroup {
    var animators: [Animators]!
    
    func performAnimation(for props: UIProps) {
        for animator in animators {
            //animator.activate(for: props)
        }
    }
}
