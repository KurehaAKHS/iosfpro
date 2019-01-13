//
//  ChangeDetailViewController.swift
//  bangdream
//
//  Created by user_06 on 2017/6/20.
//  Copyright © 2017年 user_10. All rights reserved.
//

import UIKit

class ChangeDetailViewController: UIViewController {
    var detailText = ""
    var controller = MemberDetailViewController()
    @IBOutlet weak var detailField:UITextField!
    @IBAction func buttonPressed(_ sender: Any) {
        //update
        if detailField?.text?.characters.count == 0{
            let controller = UIAlertController(title: "", message: "請輸入資料", preferredStyle: UIAlertControllerStyle.alert)
            let action = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in})
            controller.addAction(action)
            present(controller, animated: true, completion: nil)
            return
        }
        controller.detailText.text = detailField.text
        self.navigationController?.popViewController(animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.gray
        detailField.text = detailText
        
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
