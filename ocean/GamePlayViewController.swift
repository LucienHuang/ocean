//
//  GamePlayViewController.swift
//  ocean
//
//  Created by Lucien on 5/9/17.
//  Copyright © 2017 Lucien. All rights reserved.
//

import UIKit

class GamePlayViewController: UIViewController {

    @IBOutlet weak var nextChat: UIImageView!
    @IBOutlet weak var monica: UIButton!
    
    @IBOutlet weak var chatScroll: UIScrollView!
    
    @IBOutlet weak var joey: UIButton!
    var isShowing : Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nextChat.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func close(_ sender: Any) {
        navigationController?.tabBarController?.tabBar.isHidden = false
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func nextMonica(_ sender: Any) {
        if(isShowing){
            var offset = chatScroll.contentOffset
            
            offset.y = chatScroll.contentSize.height + chatScroll.contentInset.bottom - chatScroll.bounds.size.height
            
            chatScroll.setContentOffset(offset, animated: true)
            
            nextChat.isHidden = false
            nextChat.image = #imageLiteral(resourceName: "chat-2")
            isShowing = false
        }
    }
    
    @IBAction func nextJoey(_ sender: Any) {
        if(isShowing){
            var offset = chatScroll.contentOffset
            
            offset.y = chatScroll.contentSize.height + chatScroll.contentInset.bottom - chatScroll.bounds.size.height
            
            chatScroll.setContentOffset(offset, animated: true)
            
            nextChat.isHidden = false
            nextChat.image = #imageLiteral(resourceName: "chat-1")
            isShowing = false
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
