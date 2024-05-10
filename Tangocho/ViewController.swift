//
//  ViewController.swift
//  Tangocho
//
//  Created by まつはる on 2024/05/09.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
        
        @IBAction func back(sender: UIStoryboardSegue) {
            
        }
        
        @IBAction func startButtonTapped() {
            let saveData = UserDefaults.standard
            
            if saveData.array(forKey: "WORD") != nil {
                if saveData.array(forKey: "WORD")!.count > 0{
                    performSegue(withIdentifier: "toQuestionView", sender: nil)
                }
            }else{
                let alert = UIAlertController(
                    title: "LIBRARY",
                    message: "まずは、「LIBRARY」をタップして単語登録をしてください",
                    preferredStyle:  .alert
            )
                    alert.addAction(UIAlertAction(
                        title: "OK",
                        style: .default,
                        handler: nil
                ))
                    self.present(alert, animated: true, completion: nil)
        }
    }


}


