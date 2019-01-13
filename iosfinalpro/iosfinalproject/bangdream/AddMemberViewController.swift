//
//  AddMemberViewController.swift
//  bangdream
//
//  Created by user_06 on 2017/6/20.
//  Copyright © 2017年 user_10. All rights reserved.
//

import UIKit

class AddMemberViewController: UIViewController {
    @IBOutlet weak var nameField:UITextField!
    @IBAction func buttonPressed(_ sender: Any) {
        //update
        if nameField?.text?.characters.count == 0{
            let controller = UIAlertController(title: "", message: "請輸入標題", preferredStyle: UIAlertControllerStyle.alert)
            let action = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in})
            controller.addAction(action)
            present(controller, animated: true, completion: nil)
            return
        }
        controller.member.append((nameField?.text)!)
        self.navigationController?.popViewController(animated: true)
        
    }
    var controller = BandMemberViewController()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
