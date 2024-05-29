//
//  MyRNViewController.swift
//  App
//
//  Created by Haven Tang on 2024/5/27.
//  https://reactnative.dev/docs/0.73/integration-with-existing-apps
//  https://www.youtube.com/watch?v=3wftC30CN2I
//  https://nishabe.medium.com/how-to-integrate-react-native-code-with-an-existing-ios-app-655c61a65b8c
// https://fbflipper.com/docs/getting-started/ios-native/
// https://fbflipper.com/docs/getting-started/react-native/


import UIKit
import React

class MyRNViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        loadReactView()
    }
    
    func loadReactView() {
//        guard let bundleUrl = URL(string: "http://localhost:8081/index.bundle?platform=ios") else { return }
        guard let bundleUrl = Bundle.main.url(forResource: "main", withExtension: "jsbundle") else { return }
        let mockData: NSDictionary = ["scores":
            [
                ["name":"Alex", "value":"42"],
                ["name":"Joel", "value":"10"]
            ]
        ]
        let rootView = RCTRootView(bundleURL: bundleUrl, moduleName: "RNHighScores", initialProperties: mockData as [NSObject : AnyObject], launchOptions: nil)
        self.view = rootView
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
