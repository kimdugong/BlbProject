//
//  Product.swift
//  BlbProject
//
//  Created by Joosung Kim on 01/02/2017.
//  Copyright © 2017 Joosung Kim. All rights reserved.
//

import Foundation

class Product {
    
    init(productName: String, productId: String, productPrice: String) {
        self._productName = productName
        self._productId = productId
        self._productPrice = productPrice
    }
    
    fileprivate var _productId: String!
    fileprivate var _productName: String!
    fileprivate var _productPrice: String!
    
    var productId: String {
        return _productId
    }
    
    var productName: String {
        return _productName
    }
    
    var productPrice: String {
        return _productPrice
    }
}
