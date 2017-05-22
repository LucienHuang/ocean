//
//  LoadingViewController.swift
//  ocean
//
//  Created by Lucien on 5/9/17.
//  Copyright © 2017 Lucien. All rights reserved.
//

import UIKit

class LoadingViewController: UIViewController {

    var storyTitle:String = ""
    var timer: Timer!
    var timer2: Timer!
    var timer3: Timer!
    var timer4: Timer!
    var step:Int = 0
    
    @IBOutlet weak var participants: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var loading1: UILabel!
    @IBOutlet weak var loading2: UILabel!
    @IBOutlet weak var loading3: UILabel!
    @IBOutlet weak var loading4: UILabel!
    
    @IBOutlet weak var btnImg: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationController?.tabBarController?.tabBar.isHidden = true
        titleLabel.text = "<"+storyTitle+">"
        loading1.isHidden = true
        loading2.isHidden = true
        loading3.isHidden = true
        loading4.isHidden = true
        startButton.isHidden = true
        
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(nextStep), userInfo: nil, repeats: false)
        timer2 = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(nextStep), userInfo: nil, repeats: false)
        timer3 = Timer.scheduledTimer(timeInterval: 6.0, target: self, selector: #selector(nextStep), userInfo: nil, repeats: false)
        timer4 = Timer.scheduledTimer(timeInterval: 9.0, target: self, selector: #selector(nextStep), userInfo: nil, repeats: false)
        
    }

    @IBAction func goBack(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    func nextStep() -> Void{

        if step == 0{
            loading1.isHidden = false
            participants.text = "Participants: 2/9"
            step+=1
        }else if step == 1{
            loading2.isHidden = false
            participants.text = "Participants: 9/9"
            step+=1
        }else if step == 2{
            loading3.isHidden = false
            btnImg.image = #imageLiteral(resourceName: "loadgame")
            step+=1
        }else if step == 3{
            loading4.isHidden = false
            btnImg.image = #imageLiteral(resourceName: "start")
            startButton.isHidden = false
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
