//
//  SecondViewController.swift
//  Protocol&Closure
//
//  Created by MD Faizan on 25/06/23.
//

import UIKit

protocol SendProtocolData {
    
    func sendProtocolStr(_ strData:String,_ arrData:[Int])
    
}

class SecondViewController: UIViewController {
    
    var protocolDelegate:SendProtocolData?
    var sendData:((_ strSend:String,_ arrSend:[Int])->())? = nil
    let viewControlle = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.protocolDelegate?.sendProtocolStr("send data through protocol",[9,9,9])
        
        self.sendData?("send data direct without completion",[7,7,7])
                
        //recieve completion handler data inside function
                viewControlle.sendDataToNextScreen { insideFunc,insideArr  in
            print(insideFunc,"======>",insideArr)
        
            }
        
        
        
    }
    

  

}
