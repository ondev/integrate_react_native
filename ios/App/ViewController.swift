//
//  ViewController.swift
//  App
//
//  Created by Haven Tang on 2024/5/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func showRNScoresView(_ sender: Any) {
        let vc = MyRNViewController()
        
        self.present(vc, animated: true)
    }
}

