

import UIKit

class ProfileViewController: UIViewController {
    

      let profileHeader = ProfileHeaderView()
      override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .lightGray
        self.view.addSubview(profileHeader)
        
      }
        
      override func viewWillLayoutSubviews(){
        profileHeader.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        
        
    }
    
    
    
}
    


