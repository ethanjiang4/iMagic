//
//  HomeController.swift
//  iMagic 2
//
//  Created by Jiang, Ethan on 2019-07-30.
//  Copyright © 2019 Ethan Jiang. All rights reserved.
//

import UIKit

class HomeController: UIViewController {

    @IBOutlet weak var card: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func becomeFirstResponder() -> Bool {
        return true
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?){
        if motion == .motionShake
        {
            print("Shake Gesture Detected")
            if (self.card.isHidden) {
                self.card.isHidden = false
                UIViewPropertyAnimator(duration: 6, curve: .easeIn, animations: {
                    self.card.alpha = 1.0
                }).startAnimation()
            }
            else {
                UIViewPropertyAnimator(duration: 3, curve: .easeIn, animations: {
                    self.card.alpha = 0
                }).startAnimation()
            }
        }
    }

    @IBAction func homeTapped(_ sender: Any) {
        self.card.isHidden = false
        UIViewPropertyAnimator(duration: 6, curve: .easeIn, animations: {
            self.card.alpha = 1.0
        }).startAnimation()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
