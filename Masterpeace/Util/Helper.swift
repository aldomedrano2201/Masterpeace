//
//  Helper.swift
//  Masterpeace
//
//  Created by Manlika Throngsiriwat on 2023-04-05.
//

import UIKit

class Helper {
    
    static func newLabel (defaultText : String, textColor : UIColor, fontSize : CGFloat, fontAttribute : UIFont.Weight, textAlignment : NSTextAlignment) -> UILabel {
        
        let lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.text = defaultText
        lbl.textAlignment = textAlignment
        lbl.numberOfLines = 1
        lbl.font = .systemFont(ofSize: fontSize, weight: fontAttribute)
        lbl.textColor = textColor
        
        return lbl
    }
    
    static func newTextField (placeHolder : String, isPassword : Bool) -> UITextField {
        
        let txt = UITextField()
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.backgroundColor = UIColor(red: 245/255, green: 237/255, blue: 224/255, alpha: 1)
        txt.textColor = .black
        txt.font = .systemFont(ofSize: 20)
        txt.textAlignment = .left
        txt.placeholder = placeHolder
        txt.isSecureTextEntry = isPassword
        
        return txt
    }
    
    static func newButton (title : String) -> UIButton {
        
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle(title, for: .normal)
        btn.setTitleColor(.systemBlue, for: .normal)
        btn.backgroundColor = .gray.withAlphaComponent(0)
        
        return btn
    }
    
    static func newImage (imgName: String) -> UIImageView  {
        
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.tintColor = .black
        img.image = UIImage(named: imgName)
        img.contentMode = .scaleAspectFit
        
        return img
    }
}
