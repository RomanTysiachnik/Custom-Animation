//  Copyright © 2018 rtysiachnik. All rights reserved.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var centerView: UIView!
    @IBOutlet weak var sideView: UIView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var shadowView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var model = ModelView()
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        centerView.isHidden = model.isHidden
        sideView.isHidden = model.isHidden
        bottomView.isHidden = model.isHidden
    }
    
    @IBAction func viewTapAction(_ sender: UITapGestureRecognizer) {
        UIView.animateKeyframes(withDuration: 0.6, delay: 0, options: UIViewKeyframeAnimationOptions.beginFromCurrentState, animations: {
            if self.model.isHidden {
                self.model.changeHiddenStatus()
                self.bottomView.frame.origin.y -= self.bottomView.frame.height
                self.sideView.frame.origin.x -= self.sideView.frame.width
                self.centerView.alpha = 1
                self.shadowView.alpha = 0.15
            } else {
                self.model.changeHiddenStatus()
                self.bottomView.frame.origin.y += self.bottomView.frame.height
                self.sideView.frame.origin.x += self.sideView.frame.width
                self.centerView.alpha = 0
                self.shadowView.alpha = 0
            }
        }, completion: nil)
    }
}

