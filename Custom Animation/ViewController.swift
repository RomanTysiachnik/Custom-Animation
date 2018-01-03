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
    
    //Animation using CABasicAnimation
    @IBAction func buttonTapAction(_ sender: UIButton) {
    }
    
    //Animation using UIView animate
    @IBAction func viewTapAction(_ sender: UITapGestureRecognizer) {
        if self.model.isHidden {
            UIView.animate(withDuration: 0.4, delay: 0, options: [.beginFromCurrentState, .curveEaseOut],
                animations: {
                    self.bottomView.frame.origin.y -= self.bottomView.frame.height
                    self.shadowView.alpha = 0.15
                    self.sideView.frame.origin.x -= self.sideView.frame.width
                    self.centerView.alpha = 1 },
                completion: nil)
            self.model.changeHiddenStatus()
        } else {
            UIView.animate(withDuration: 0.4, delay: 0, options: [.beginFromCurrentState, .curveEaseOut],
                animations: {
                    self.bottomView.frame.origin.y += self.bottomView.frame.height
                    self.shadowView.alpha = 0
                    self.sideView.frame.origin.x += self.sideView.frame.width
                    self.centerView.alpha = 0 },
                completion: nil)
            self.model.changeHiddenStatus()
        }
    }
}

