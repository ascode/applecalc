//
//  ViewController.swift
//  xcalc
//
//  Created by 金飞 on 15/8/30.
//  Copyright (c) 2015年 金飞. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var logoimg : UIImageView!
    @IBOutlet weak var textOne: UITextField!
    @IBOutlet weak var textTwo: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBAction func calc(sender:AnyObject) {
        
        
        
        var num1 = self.textOne.text.toInt()
        var num2 = self.textTwo.text.toInt()

        if(self.textOne.text.isEmpty){
            num1 = 0
        }
        
        if(!self.textTwo.hasText()){
            num2 = 0
        }
        
        var resultNum = num1!+num2!
        
        //var resultStr = String.
        
        var resultStr = "\(resultNum)"
        
        self.result.text = resultStr
        
        
        self.textOne.endEditing(true)
        self.textTwo.endEditing(true)
    }
    @IBAction func clearCalc() {
        self.textOne.text = ""
        self.textTwo.text = ""
        self.result.text = "0"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.logoimg.image = UIImage(named: "logo.png")
        // Do any additional setup after loading the view, typically from a nib.
        
        var h = Hello()
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

