//
//  ViewController.swift
//  iOS-Swift-SeguesAndNavigationsProgrammatically
//
//  Created by Pooya on 2020-05-15.
//  Copyright © 2020 centurytrail.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
     var selectedItems = ["a","b"]
    
//    // First: define an array of items. (1)
//    var selectedItems: [Item] = []
//
//    // This is the "share button" on the topbar (2)
//    @IBAction func shareSelectedItems(_ sender: UIButton) {
//        self.selectedItems = collectionView.getCurrentlySelectedItems()
//        self.performSegue(withIdentifier: "shareItems", sender: nil)
//    }
//
//    // This is the method that gets called if we click in the share
//    // button of just one cell of the collection view. (3)
//    func shareButtonClickedForCellItem(item: Item) {
//        self.selectedItems = [item]
//        self.performSegue(withIdentifier: "shareItems", sender: nil)
//    }
//
//    // We pass the parameters via the prepareForSegue:sender method (4)
//    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let svc = segue.destination as? ShareViewController {
//            share.itemsToShare = self.selectedItems
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segue.identifier {
        case "ShowSeques":
            let vc = segue.destination as! ShowSequesViewController
            vc.dataPassViaSegue = "Your ShowSeques Data"
        case "ModalSeques":
            let vc = segue.destination as! ModalViewController
            vc.dataPassViaSegue = "Your ModalSeques Data"
        case "ShowDetails":
            let vc = segue.destination as! ShowDetailsViewController
            vc.dataPassViaSegue = "Your ShowDetails Data"
        case "ShowPopUp":
            let vc = segue.destination as! ShowPopUpViewController
            vc.dataPassViaSegue = "Your ShowPopUp Data"
        default:
            print("not expected case")
        }
        
    }
    
    
    @IBAction func showASegueViewController(_ sender: Any?) {
        
        self.selectedItems = ["a","b"]
        self.performSegue(withIdentifier: "ShowSeques", sender: nil)
//                if let mvc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ShowSequesViewController") as? ShowSequesViewController {
//        mvc.dataPassViaSegue = "Your ShowSequesViewController Data"
//                    self.present(mvc, animated: true, completion: nil)
//                }
    }

    @IBAction func showAModalViewController(_ sender: Any?) {
            self.performSegue(withIdentifier: "ModalSeques", sender: nil)
//                if let mvc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ModalViewController") as? ModalViewController {
//        mvc.dataPassViaSegue = "Your ModalViewController Data"
//                    self.present(mvc, animated: true, completion: nil)
//                }
        }

    @IBAction func showADetailViewController(_ sender: Any?) {
//            self.performSegue(withIdentifier: "ShowDetails", sender: nil)
                if let mvc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ShowDetailsViewController") as? ShowDetailsViewController {
                    mvc.dataPassViaSegue = "Your ShowDetailsViewController Data"
                    self.present(mvc, animated: true, completion: nil)
                }
        }

    @IBAction func showAPopUpViewController(_ sender: Any?) {
//                self.performSegue(withIdentifier: "ShowPopUp", sender: nil)
        if let mvc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ShowPopUpViewController") as? ShowPopUpViewController {
            mvc.dataPassViaSegue = "Your ShowPopUpViewController Data"
            self.present(mvc, animated: true, completion: nil)
        }
    }
    
}

