//
//  DetailViewController.swift
//  BlbProject
//
//  Created by Joosung Kim on 01/02/2017.
//  Copyright © 2017 Joosung Kim. All rights reserved.
//

import UIKit
import GMStepper

class DetailViewController: UIViewController {
    
    var product: Product!
    
    @IBOutlet weak var optionView: UIView!
    @IBOutlet weak var productImg: UIImageView!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var stepper: GMStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIView.animate(withDuration: 0.3, delay: 0.05, options: .curveEaseOut, animations: {
            self.optionView.frame.origin.y -= 232
        }) { (complete) in
            if complete == true {
                self.optionView.alpha = 1.0
            }
        }
        
        if product != nil {
            productImg.image = UIImage(named: "\(product.productId)")
            priceLbl.text = product.productPrice
        }
        optionView.alpha = 0.7
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func valueChanged(_ sender: Any) {
        
        if product != nil {            
            let numberOfProduct = Int(stepper.value)
            let price = Int(product.productPrice)
            
            let total = "\(numberOfProduct * price!)"
            priceLbl.text = total
        }
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
