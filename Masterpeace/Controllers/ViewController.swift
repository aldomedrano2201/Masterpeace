//
//  ViewController.swift
//  Masterpeace
//
//  Created by Manlika Throngsiriwat and Aldo Medrano on 2023-03-29.
//

import UIKit

class ViewController: UIViewController {
    
    let mySignInFrame = MySignInFrame()
    
    private let lblWelcome = newLabel(defaultText: "WELCOME TO...", textColor: UIColor(red: 160/255, green: 0/255, blue: 55/255, alpha: 1), fontSize: 36, fontAttribute: .bold, textAlignment: .center)
    
    private let lblTitle = newLabel(defaultText: "Masterpeace :D", textColor: UIColor(red: 240/255, green: 94/255, blue: 129/255, alpha: 1), fontSize: 36, fontAttribute: .bold, textAlignment: .center)
    
    private let lblAskforSignUp = newLabel(defaultText: "Do not have an account yet?", textColor: .black, fontSize: 18, fontAttribute: .regular, textAlignment: .left)
    
    private let lblFreeAccess = newLabel(defaultText: "Free Access", textColor: .black, fontSize: 20, fontAttribute: .regular, textAlignment: .center)
    
    private let btnSignUp = newButton(title: "SignUp")
    
    private let btnFreeAccess = newButton(title: "Click here!")
    
    private let imgSnoopy = imgMainPage(imgName: "signIn")
    
    
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
        btn.setTitleColor(.systemBlue, for: .normal)
        btn.backgroundColor = .gray.withAlphaComponent(0)
        
        return btn
    }
    
    static func imgMainPage (imgName: String) -> UIImageView  {
        
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.tintColor = .black
        img.image = UIImage(named: imgName)
        img.contentMode = .scaleAspectFit
        
        return img
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        initialize()
        applyConstraint()
        addTargets()
        
    }
    
    func initialize(){
        
        mySignInFrame.layer.cornerRadius = 20
        
        self.view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 208/255, alpha: 1)
        self.view.addSubviews(lblWelcome,lblTitle, mySignInFrame, lblFreeAccess, lblAskforSignUp, btnFreeAccess, btnSignUp, imgSnoopy)
        
    }
    
    func applyConstraint() {
        
        NSLayoutConstraint.activate([
            
            lblWelcome.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 20),
            lblWelcome.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -50),
            lblWelcome.heightAnchor.constraint(equalToConstant: 100),
            
            lblTitle.topAnchor.constraint(equalTo: lblWelcome.bottomAnchor, constant: -10),
            lblTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 30),
            lblTitle.heightAnchor.constraint(equalToConstant: 80),
            
            mySignInFrame.topAnchor.constraint(equalTo: lblTitle.bottomAnchor, constant: 20),
            mySignInFrame.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            mySignInFrame.widthAnchor.constraint(equalToConstant: 400),
            
            lblFreeAccess.topAnchor.constraint(equalTo: mySignInFrame.bottomAnchor, constant: 20),
            lblFreeAccess.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -40),
            lblFreeAccess.heightAnchor.constraint(equalToConstant: 20),
            
            btnFreeAccess.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 60),
            btnFreeAccess.heightAnchor.constraint(equalTo: lblFreeAccess.heightAnchor),
            btnFreeAccess.topAnchor.constraint(equalTo: mySignInFrame.bottomAnchor, constant: 20),
            
            lblAskforSignUp.topAnchor.constraint(equalTo: lblFreeAccess.bottomAnchor, constant: 20),
            lblAskforSignUp.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: -40),
            lblAskforSignUp.heightAnchor.constraint(equalToConstant: 20),
            
            btnSignUp.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 110),
            btnSignUp.heightAnchor.constraint(equalTo: lblAskforSignUp.heightAnchor),
            btnSignUp.topAnchor.constraint(equalTo: btnFreeAccess.bottomAnchor, constant: 20),
            
            imgSnoopy.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
            imgSnoopy.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 70),
            imgSnoopy.heightAnchor.constraint(equalToConstant: 300),
            imgSnoopy.widthAnchor.constraint(equalToConstant: 150),
            
        ])
        
    }
    
    func addTargets() {
        
    }


}

