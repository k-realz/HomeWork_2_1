//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Kirill Komov on 05.07.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

class ProfileHeaderView: UIView {

   let button = UIButton()
   let textLabel = UILabel()
   let textUser = UILabel()
   let textField = UITextField()
   let imageAvatar: UIImageView = {
        let imageAvatar = UIImageView()
        imageAvatar.contentMode = .scaleAspectFill
        imageAvatar.image = #imageLiteral(resourceName: "ava")
        imageAvatar.frame = CGRect(x: 20, y: 100, width: 110, height: 110)
        imageAvatar.clipsToBounds = true
        imageAvatar.layer.cornerRadius = imageAvatar.frame.height / 2
        imageAvatar.layer.borderWidth = 3
        imageAvatar.layer.borderColor = UIColor.white.cgColor
        return imageAvatar
      }()
    
    @objc func tap(){
        textLabel.text = textField.text
        textLabel.textAlignment = .center
    }
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(button)
        button.frame = CGRect(x: 16, y: UIScreen.main.bounds.width/2+10, width: UIScreen.main.bounds.width-32, height: 50)
        button.setTitle("Show status", for: .normal)
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
        button.layer.cornerRadius = 14
       
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 0, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowOpacity = 0.7

        
        addSubview(textLabel)
        textLabel.frame = CGRect(x: 155, y: button.bounds.width-255, width: UIScreen.main.bounds.width-32, height: 50)
        textLabel.text = "Wait for something..."
        textLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        textLabel.textColor = .gray
        
        addSubview(textUser)
        textUser.frame = CGRect(x: 150, y: button.bounds.width-320 , width: UIScreen.main.bounds.width, height: 100)
        textUser.text = "MICROPHONE CHECKER"
        textUser.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        
        addSubview(textField)
        textField.frame = CGRect(x: 155, y: button.bounds.width-215, width: UIScreen.main.bounds.width-200, height: 40)
        textField.placeholder = "something to status"
        textField.layer.cornerRadius = 12
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.black.cgColor
        textField.backgroundColor = .white
        textField.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        
        
        addSubview(imageAvatar)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
     
    
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */


