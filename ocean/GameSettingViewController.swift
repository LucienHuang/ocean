//
//  GameSettingViewController.swift
//  ocean
//
//  Created by Lucien on 5/9/17.
//  Copyright © 2017 Lucien. All rights reserved.
//

import UIKit

class GameSettingViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    @IBOutlet weak var createGame: UIButton!

    @IBOutlet weak var storyTitle: UITextField!
    @IBOutlet weak var storyContext: UITextField!
    
    
    @IBOutlet weak var bgImg: UIImageView!
    @IBOutlet weak var Choose: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        navigationController?.tabBarController?.tabBar.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func chooseCharacter(_ sender: Any) {
        bgImg.image = #imageLiteral(resourceName: "5_4")
    }
    
    @IBOutlet weak var goBack: UIBarButtonItem!

    @IBAction func goingBack(_ sender: Any) {
        navigationController?.tabBarController?.tabBar.isHidden = false
        navigationController?.popViewController(animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        textView.resignFirstResponder()
        return true
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "createGameNow"{
            if let vc = segue.destination as?LoadingViewController{
                vc.storyTitle = self.storyTitle.text!
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
