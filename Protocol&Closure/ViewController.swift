//
//  ViewController.swift
//  Protocol&Closure
//
//  Created by MD Faizan on 25/06/23.
// closure and protocol direct and reverse test
//closure with function and without funtion

import UIKit

class ViewController: UIViewController ,SendProtocolData{
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gotoNext(_ sender: UIButton) {
        //send data direct without completion handler  inside funtion with closure
       
        
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        
        vc?.protocolDelegate = self
        self.navigationController?.pushViewController(vc!, animated: true)
        
        
        
        //recieve direct data without completion
        vc?.sendData  = { strData,arrData in
                print(strData,"=====>",arrData)
        }
        
    }
    
    //send data to next screen with function by closure
    //pass one array and string
    func sendDataToNextScreen(completionHandler:(_ insideFunc:String,_ insideArr:[Int])->()) {
        
        
        
        completionHandler("passing data with completion handler", [1,2,3])
        
    }
    
    
    func sendProtocolStr(_ strData: String,_ arrData:[Int]) {
        print(strData,"=====>protocol data===>>",arrData)
    }
    
}

