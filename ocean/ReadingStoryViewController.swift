//
//  ReadingStoryViewController.swift
//  ocean
//
//  Created by Lucien on 5/9/17.
//  Copyright © 2017 Lucien. All rights reserved.
//

import UIKit

class ReadingStoryViewController: UIViewController {

    @IBOutlet weak var chatBox: UIImageView!
    @IBOutlet weak var tap: UIButton!
    var state = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = false

        // Do any additional setup after loading the view.
        navigationController?.tabBarController?.tabBar.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goBack(_ sender: Any) {
        navigationController?.tabBarController?.tabBar.isHidden = false
        
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func next(_ sender: Any) {
        state += 1
        var chatting: UIImage
        
        if(state==1){
            chatting = #imageLiteral(resourceName: "4_2")
            chatBox.image = chatting
        }else if state==2{
            chatting = #imageLiteral(resourceName: "4_3")
            chatBox.image = chatting
        }else if state==3{
            chatting = #imageLiteral(resourceName: "4_4")
            chatBox.image = chatting
        }else{
            chatting = #imageLiteral(resourceName: "4_5")
            chatBox.image = chatting
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
