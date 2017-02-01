//
//  ViewController.swift
//  BlbProject
//
//  Created by Joosung Kim on 01/02/2017.
//  Copyright © 2017 Joosung Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var product = [Product]()
    let product1: Product = Product(productName: "예가체프", productId: "1", productPrice: "10000")
    let product2: Product = Product(productName: "콜롬비아", productId: "2", productPrice: "20000")
    let product3: Product = Product(productName: "브라질", productId: "3", productPrice: "30000")
    let product4: Product = Product(productName: "케냐", productId: "4", productPrice: "40000")
    let product5: Product = Product(productName: "만델링 1", productId: "5", productPrice: "50000")
    let product6: Product = Product(productName: "만델링 2", productId: "6", productPrice: "60000")
    let product7: Product = Product(productName: "쿠바", productId: "7", productPrice: "70000")
    let product8: Product = Product(productName: "코나", productId: "8", productPrice: "80000")
    let product9: Product = Product(productName: "콩가", productId: "9", productPrice: "90000")
    let product10: Product = Product(productName: "듀에나 내츄럴", productId: "10", productPrice: "100000")
    
    func readyForProduct() {
        product.append(product1)
        product.append(product2)
        product.append(product3)
        product.append(product4)
        product.append(product5)
        product.append(product6)
        product.append(product7)
        product.append(product8)
        product.append(product9)
        product.append(product10)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.delegate = self
        
        readyForProduct()
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        var product: Product!
        product = self.product[indexPath.row]
        performSegue(withIdentifier: "ProductDetail", sender: product)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return product.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? BlbCollectionViewCell {
            let product: Product!
            
            product = self.product[indexPath.row]
            
            cell.configureCell(product)
            
            return cell
        }
        
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: self.collectionView.frame.width / 2.1, height: self.collectionView.frame.width / 2.1)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destinationVC = segue.destination
        
        if let navcon = destinationVC as? UINavigationController {
            destinationVC = navcon.visibleViewController ?? destinationVC
        }
        if let detailvc = destinationVC as? DetailViewController {
            if let product = sender as? Product {
                detailvc.product = product
             
            }
        }
    }
    
//    class PrimarySplitViewController: UISplitViewController, UISplitViewControllerDelegate {
//        
//        override func viewDidLoad() {
//            self.delegate = self
//            self.preferredDisplayMode = .allVisible
//        }
//        
//        func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController!, ontoPrimaryViewController primaryViewController: UIViewController!) -> Bool {
//            // Return YES to prevent UIKit from applying its default behavior
//            return true 
//        }
//    }

}

