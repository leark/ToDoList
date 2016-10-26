//
//  AddItemViewController.swift
//  ToDoList
//
//  Created by iGuest on 10/24/16.
//  Copyright © 2016 iGuest. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {

    @IBOutlet weak var taskDescription: UITextView!
    @IBOutlet weak var taskTitle: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addItem(_ sender: AnyObject) {
        //self.labelToChange.text = "changed"
        let defaults = UserDefaults.standard
        var tasks = defaults.array(forKey: "tasks")
        if tasks == nil {
            tasks = Array()
        }
        tasks!.append([ "title" : self.taskTitle.text!,
                        "description" : self.taskDescription.text!
        ])
        defaults.set(tasks, forKey: "tasks")
        
        
        self.dismiss(animated: true, completion: nil)
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
