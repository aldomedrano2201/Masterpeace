//
//  UIView_addSubViews.swift
//  MIDTERM_2032382
//
//  Created by Manlika Throngsiriwat on 2023-03-10.
//

import UIKit

extension UIView{
    
    //Variadic function
    func addSubviews( _ views : UIView... ){
        
        for view in views{
            self.addSubview(view)
        }
    }
}
