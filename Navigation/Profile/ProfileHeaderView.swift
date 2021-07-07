

import UIKit

class ProfileHeaderView: UIView {

   let buttonStatus = UIButton()
   let textLabelStatus = UILabel()
   let textUserInfo = UILabel()
   let textFieldStatus = UITextField()
   let imageAvatar: UIImageView = {
        let imageAvatar = UIImageView()
        imageAvatar.contentMode = .scaleAspectFill
        imageAvatar.image = #imageLiteral(resourceName: "ava")
    imageAvatar.frame = CGRect(x: 16, y: 108, width: 110, height: 110)
        imageAvatar.clipsToBounds = true
        imageAvatar.layer.cornerRadius = imageAvatar.frame.height / 2
        imageAvatar.layer.borderWidth = 3
        imageAvatar.layer.borderColor = UIColor.white.cgColor
        return imageAvatar
      }()
    
    @objc func tap(){
        textLabelStatus.text = textFieldStatus.text
        textLabelStatus.textAlignment = .center
    }
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        buttonStatus.frame = CGRect(x: 16, y: 234, width: UIScreen.main.bounds.width - 32, height: 50)
        buttonStatus.setTitle("Show status", for: .normal)
        buttonStatus.backgroundColor = .systemBlue
        buttonStatus.addTarget(self, action: #selector(tap), for: .touchUpInside)
        buttonStatus.layer.cornerRadius = 4
        buttonStatus.layer.shadowColor = UIColor.black.cgColor
        buttonStatus.layer.shadowOffset = CGSize(width: 0, height: 4)
        buttonStatus.layer.shadowRadius = 4
        buttonStatus.layer.shadowOpacity = 0.7

        
        textLabelStatus.frame = CGRect(x: imageAvatar.frame.width + 32, y: buttonStatus.bounds.width - 255, width: UIScreen.main.bounds.width - 32, height: 50)
        textLabelStatus.text = "Wait for something..."
        textLabelStatus.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        textLabelStatus.textColor = .gray
        
        
        textUserInfo.frame = CGRect(x: imageAvatar.frame.width + 32, y: 100, width: UIScreen.main.bounds.width, height: 50)
        textUserInfo.text = "MICROPHONE CHECKER"
        textUserInfo.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        
        
        textFieldStatus.frame = CGRect(x: imageAvatar.frame.width + 32, y: buttonStatus.bounds.width - 215, width: UIScreen.main.bounds.width - 200, height: 40)
        textFieldStatus.placeholder = "something to status"
        textFieldStatus.layer.cornerRadius = 12
        textFieldStatus.layer.borderWidth = 1
        textFieldStatus.layer.borderColor = UIColor.black.cgColor
        textFieldStatus.backgroundColor = .white
        textFieldStatus.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        
        
        addSubview(buttonStatus)
        addSubview(imageAvatar)
        addSubview(textLabelStatus)
        addSubview(textUserInfo)
        addSubview(textFieldStatus)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
     
    
    }
    


