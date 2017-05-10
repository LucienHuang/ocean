//
//  storyListViewController.swift
//  ocean
//
//  Created by Lucien on 5/9/17.
//  Copyright © 2017 Lucien. All rights reserved.
//

import UIKit

class storyListViewController: UIViewController {
    @IBOutlet weak var change: UISegmentedControl!

    @IBOutlet weak var tab1: UIScrollView!
    @IBOutlet weak var tab2: UIView!
    
    @IBOutlet weak var tab3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tab2.isHidden = true
        tab3.isHidden = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func indexChange(_ sender: Any) {
        switch change.selectedSegmentIndex{
        case 0:
            tab1.isHidden = false
            tab2.isHidden = true
            tab3.isHidden = true
            break
        case 1:
            tab1.isHidden = true
            tab2.isHidden = true
            tab3.isHidden = false
            break
        case 2:
            tab1.isHidden = true
            tab2.isHidden = false
            tab3.isHidden = true
            break
        default:
            break
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
