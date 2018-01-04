//  Copyright © 2018 rtysiachnik. All rights reserved.

import UIKit

class AnimatorGroup {
    var constraintAnimators: [ConstraintAnimatorProxy]!
    var alphaAnimator: [AlphaAnimatorProxy]!
    
    func performAnimation() {
        for animator in constraintAnimators {
            animator.activate(if: true)
        }
        for animator in alphaAnimator {
            animator.activate(if: true)
        }
    }
    
    
}
