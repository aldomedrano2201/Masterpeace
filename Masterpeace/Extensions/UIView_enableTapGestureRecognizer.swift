//
//  UIView_enableTapGestureRecognizer.swift
//  MIDTERM_2032382
//
//  Created by Manlika Throngsiriwat on 2023-03-10.
//

import UIKit

extension UIView{
    
    func enableTapGestureRecognizer(target: Any?, action: Selector?){
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: target, action: action)
        self.addGestureRecognizer(tapGestureRecognizer)
        self.isUserInteractionEnabled = true //enable for user to tap
    }
}
