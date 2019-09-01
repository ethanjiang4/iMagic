//
//  DelayController.swift
//  iMagic 2
//
//  Created by Jiang, Ethan on 2019-07-31.
//  Copyright © 2019 Ethan Jiang. All rights reserved.
//

import UIKit

class DelayController: UIViewController {

    @IBOutlet weak var hmm: UILabel!
    
    @IBOutlet weak var think: UILabel!
    
    @IBOutlet weak var proveBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
       
        UIViewPropertyAnimator(duration: 1, curve: .easeIn, animations: {
            self.hmm.alpha = 1.0
        }).startAnimation(afterDelay:0.5)
        
        UIViewPropertyAnimator(duration: 1, curve: .easeIn, animations: {
            self.think.alpha = 1.0
        }).startAnimation(afterDelay:2.5)
        
        UIViewPropertyAnimator(duration: 1, curve: .easeIn, animations: {
            self.proveBtn.alpha = 1.0
        }).startAnimation(afterDelay:3.0)
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
