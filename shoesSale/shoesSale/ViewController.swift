//
//  ViewController.swift
//  shoesSale
//
//  Created by Евгений Забродский on 2.11.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var buttonBuy: UIButton!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    var imageArray = [UIImage(named: "1.jpg"), UIImage(named: "2.jpg"), UIImage(named: "3.jpg"), UIImage(named: "4.jpg")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageView.image = self.imageArray[0]
        priceLabel.text = "99,99$"
        

    }

    @IBAction func segmentControlAction(_ sender: UISegmentedControl) {
        let target = segmentControl.selectedSegmentIndex
        self.imageView.image = self.imageArray[target]
        if segmentControl.selectedSegmentIndex == 0 {
            priceLabel.text = "99,99$"
        } else if segmentControl.selectedSegmentIndex == 1 {
            priceLabel.text = "104,99$"
        } else if segmentControl.selectedSegmentIndex == 2 {
            priceLabel.text = "150,00$"
        } else {
            priceLabel.text = "89,90$"
        }
    }
  
    
    @IBAction func actionButtonBuy(_ sender: Any) {
        showAlert(title: "Thanks for buy", message: "Please enter your adress")
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "NEXT", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }

    
}

