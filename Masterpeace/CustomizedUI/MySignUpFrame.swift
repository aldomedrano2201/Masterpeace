//
//  MainPage.swift
//  Masterpeace
//
//  Created by Manlika Throngsiriwat on 2023-03-29.
//

import UIKit

class MainPage : UIView {
    
    let mySignInFrame = MySignInFrame()
    
    private let lblTitle = newLabel(defaultText: "Masterpeace", textColor: UIColor(red: 240, green: 94, blue: 129, alpha: 1), fontSize: 26, fontAttribute: .bold, textAlignment: .center)
    
    private let lblAskforSignUp = newLabel(defaultText: "Do not have an account yet?", textColor: .black, fontSize: 14, fontAttribute: .regular, textAlignment: .left)
    
    private let lblFreeAccess = newLabel(defaultText: "Free Access", textColor: .black, fontSize: 14, fontAttribute: .regular, textAlignment: .center)
    
    private let btnSignUp = newButton(title: "SignUp")
    
    private let btnFreeAccess = newButton(title: "Click here!")
    
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
    
    static func newButton (title : String) -> UIButton {
        
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle(title, for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.backgroundColor = .gray.withAlphaComponent(0)
        
        return btn
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initialize()
        applyConstraint()
        addTargets()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initialize(){
        
        self.backgroundColor = UIColor(red: 255, green: 246, blue: 248, alpha: 1)
        self.addSubviews(lblTitle, mySignInFrame, lblFreeAccess, lblAskforSignUp, btnFreeAccess, btnSignUp)
        
    }
    
    func applyConstraint() {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            self.heightAnchor.constraint(equalToConstant: 180),
            self.widthAnchor.constraint(equalToConstant: 450),
            
            
        ])
    }
    
    func addTargets() {
        
    }
}
