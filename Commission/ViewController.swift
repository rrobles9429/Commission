//
//  ViewController.swift
//  Commission
//
//  Created by Rebecca Robles on 10/5/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var totalPayLabel: UILabel!
    @IBOutlet weak var commissionPayTextField: UITextField!
    
    let basePay:Int = 500
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    @IBAction func calculateOnTapped(_ sender: UIButton)
    {
    let commissionPay = getInput()
    let totalPay = commissionPay + Double(basePay)
    totalPayLabel.text = "Total Pay = $\(totalPay)"
    }
    func getInput() -> Double
    {
        if let commissionPay = commissionPayTextField.text, let pay = Double(commissionPay)
        {
            return pay
            
        }
        else
        {
            return 0
        }

}

    
    
}
