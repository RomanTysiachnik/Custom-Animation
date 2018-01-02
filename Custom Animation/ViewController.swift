//  Copyright © 2018 rtysiachnik. All rights reserved.

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var centerView: UIView!
    @IBOutlet weak var sideView: UIView!
    @IBOutlet weak var bottomView: UIView!
    
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
    
    @IBAction func tapAction(_ sender: UIButton) {
        model.changeUIState()
        view.setNeedsLayout()
    }
}

