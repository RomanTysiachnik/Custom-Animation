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
    @IBOutlet var shadowAnimator: AlphaAnimatorProxy!
    
    @IBAction func propsSegmentControl(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            props.bottomView.isHidden = false
            props.centerView.isHidden = false
            props.sideView.isHidden = false
            props.topView.isHidden = false
            updateState()
        case 1:
            props.bottomView.isHidden = true
            props.centerView.isHidden = false
            props.sideView.isHidden = false
            props.topView.isHidden = false
            updateState()
        case 2:
            props.bottomView.isHidden = false
            props.centerView.isHidden = false
            props.sideView.isHidden = true
            props.topView.isHidden = true
            updateState()
        case 3:
            props.bottomView.isHidden = true
            props.centerView.isHidden = false
            props.sideView.isHidden = true
            props.topView.isHidden = true
            updateState()
        default: break
        }
    }
    var props: UIProps!
    var model: ModelView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        props = UIProps()
        model = ModelView()
    }
    
    //Animation using UIView animate
    
    @IBAction func tapAction(_ sender: UITapGestureRecognizer) {
        print("dasdaaa")
        model.changeHiddenStatus()
        toggleForActive(if: model.isHidden)
    }
    
    func updateState() {
        UIView.animate(withDuration: 0.4, delay: 0, options: [.beginFromCurrentState, .curveEaseOut],
                       animations: {
                        self.rightAnimator.activate(if: self.props.sideView.isHidden)
                        self.bottomAnimator.activate(if: self.props.bottomView.isHidden)
                        self.topAnimator.activate(if: self.props.topView.isHidden)
                        self.centerAnimator.activate(if: self.props.centerView.isHidden)
                        self.view.layoutIfNeeded()
        },
                       completion: nil)
    }
    func toggleForActive(if state: Bool) {
        UIView.animate(withDuration: 0.4, delay: 0, options: [.beginFromCurrentState, .curveEaseOut],
                       animations: {
                        if !self.props.sideView.isHidden {
                            self.rightAnimator.activate(if: state)
                        }
                        if !self.props.bottomView.isHidden {
                            self.bottomAnimator.activate(if: state)
                        }
                        if !self.props.topView.isHidden {
                            self.topAnimator.activate(if: state)
                        }
                        if !self.props.centerView.isHidden {
                            self.centerAnimator.activate(if: state)
                        }
                        self.view.layoutIfNeeded()
        },
                       completion: nil)
    }
}

