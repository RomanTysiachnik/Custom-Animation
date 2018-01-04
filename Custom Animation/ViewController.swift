//  Copyright © 2018 rtysiachnik. All rights reserved.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var centerView: UIView!
    @IBOutlet weak var sideView: UIView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var topView: UIView!
    
    @IBOutlet var rightAnimator: ConstraintAnimatorProxy!
    @IBOutlet var bottomAnimator: ConstraintAnimatorProxy!
    @IBOutlet var centerAnimator: AlphaAnimatorProxy!
    @IBOutlet var topAnimator: AlphaAnimatorProxy!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var model = ModelView()
    
    //Animation using UIView animate
    @IBAction func viewTapAction(_ sender: UITapGestureRecognizer) {
        self.view.setNeedsLayout()
        if self.model.isHidden {
            UIView.animate(withDuration: 0.4, delay: 0, options: [.beginFromCurrentState, .curveEaseOut],
                animations: {
                    self.rightAnimator.activate()
                    self.bottomAnimator.activate()
                    self.centerAnimator.activate()
                    self.topAnimator.activate()
                    
                    self.shadowView.alpha = 0.15
                    self.view.layoutIfNeeded()
            },
                completion: nil)
            self.model.changeHiddenStatus()
        } else {
            UIView.animate(withDuration: 0.4, delay: 0, options: [.beginFromCurrentState, .curveEaseOut],
                animations: {
                    self.rightAnimator.deactivate()
                    self.bottomAnimator.deactivate()
                    self.centerAnimator.deactivate()
                    self.topAnimator.deactivate()
                    
                    self.shadowView.alpha = 0
                    self.view.layoutIfNeeded()
            },
                completion: nil)
            self.model.changeHiddenStatus()
        }
    }
}

