//
//  MsgViewController.swift
//  iMagic 2
//
//  Created by Jiang, Ethan on 2019-07-24.
//  Copyright © 2019 Ethan Jiang. All rights reserved.
//

import UIKit
import MessageUI;

class MsgViewController: UIViewController, MFMessageComposeViewControllerDelegate {

    @IBOutlet weak var phoneInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneInput.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func enterTapped(_ sender: Any) {
        //Send SMS to phone number
        let phone: String = phoneInput.text!
        if (MFMessageComposeViewController.canSendText()) {
            let controller = MFMessageComposeViewController()
            controller.messageComposeDelegate = self
            controller.body = "Your card is: Ace of Clubs!"
            controller.recipients = [phone]
            self.present(controller, animated: true, completion: nil)
        }
        
    }
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController,
                                      didFinishWith result: MessageComposeResult) {
        // Check the result or perform other tasks.
        
        // Dismiss the message compose view controller.
        controller.dismiss(animated: true, completion: nil)}
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        phoneInput.resignFirstResponder()
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

extension MsgViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
