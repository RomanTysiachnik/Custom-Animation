//  Copyright © 2018 rtysiachnik. All rights reserved.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var centerView: UIView!
    @IBOutlet weak var sideView: UIView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var topView: UIView!
    
    
    @IBOutlet weak var bottomViewAnimationConstraint: NSLayoutConstraint!
    @IBOutlet weak var bottomViewDefaultConstraint: NSLayoutConstraint!
    @IBOutlet weak var sideViewAnimationConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var sideViewDefaultConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var model = ModelView()
    
    //Animation using CABasicAnimation
    @IBAction func buttonTapAction(_ sender: UIButton) {
    }
    
    //Animation using UIView animate
    @IBAction func viewTapAction(_ sender: UITapGestureRecognizer) {
        self.view.setNeedsLayout()
        if self.model.isHidden {
            UIView.animate(withDuration: 0.4, delay: 0, options: [.beginFromCurrentState, .curveEaseOut],
                animations: {
                    self.statusBarHiddenState = false
                    self.bottomViewDefaultConstraint.isActive = true
                    self.bottomViewAnimationConstraint.isActive = false
                    self.sideViewDefaultConstraint.isActive = true
                    self.sideViewAnimationConstraint.isActive = false
                    self.shadowView.alpha = 0.15
                    self.centerView.alpha = 1
                    self.topView.alpha = 1
                    self.view.layoutIfNeeded()
                    self.setNeedsStatusBarAppearanceUpdate()
            },
                completion: nil)
            self.model.changeHiddenStatus()
        } else {
            UIView.animate(withDuration: 0.4, delay: 0, options: [.beginFromCurrentState, .curveEaseOut],
                animations: {
                    self.statusBarHiddenState = true
                    self.bottomViewDefaultConstraint.isActive = false
                    self.bottomViewAnimationConstraint.isActive = true
                    self.sideViewDefaultConstraint.isActive = false
                    self.sideViewAnimationConstraint.isActive = true
                    self.shadowView.alpha = 0
                    self.centerView.alpha = 0
                    self.topView.alpha = 0
                    self.view.layoutIfNeeded()
                    self.setNeedsStatusBarAppearanceUpdate()
                    
            },
                completion: nil)
            self.model.changeHiddenStatus()
        }
    }
    
    private var statusBarHiddenState: Bool = false
    override var prefersStatusBarHidden: Bool {
        return statusBarHiddenState
    }
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation{
        return .slide
    }
}

