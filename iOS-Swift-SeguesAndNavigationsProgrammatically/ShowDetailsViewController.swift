//
//  ShowDetailsViewController.swift
//  iOS-Swift-SeguesAndNavigationsProgrammatically
//
//  Created by Pooya on 2020-05-16.
//  Copyright © 2020 centurytrail.com. All rights reserved.
//

import UIKit

class ShowDetailsViewController: UIViewController {

    var dataPassViaSegue = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        print(dataPassViaSegue)
    }
    

    @IBAction func closeThisViewController(_ sender: Any?) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }


}
