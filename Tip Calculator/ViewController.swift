//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Ronak Chaudhuri on 6/8/17.
//  Copyright © 2017 Ronak Chaudhuri. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var backgroundPicture: UIImageView!
    @IBOutlet weak var tipTextField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var grandTotalLabel: UILabel!
    @IBOutlet weak var numberOfPeople: UILabel!
    @IBOutlet weak var button25: UIButton!
    @IBOutlet weak var button20: UIButton!
    @IBOutlet weak var button15: UIButton!
    @IBOutlet weak var button10: UIButton!

   
    
    
    var tipAmount = 0.15
    var numberPeople = 1
    //var twentyFiveSelected = UIImage(named: "25selected") as UIImage!
    //var twentySelected = UIImage(named: "20selected") as UIImage!
    //var fifteenSelected = UIImage(named: "15selected") as UIImage!
    //var tenselected = UIImage(named: "10selected") as UIImage!
   // var twentyFiveUnselected = UIImage(named: "25selected") as UIImage!
   // var twentyUnselected = UIImage(named: "20selected") as UIImage!
   // var fifteenUnselected = UIImage(named: "15selected") as UIImage!
   // var tenUnselected = UIImage(named: "10selected") as UIImage!
    
    

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        backgroundPicture.image = UIImage(named:"greenImage")
    }
    
    @IBAction func button25(_ sender: Any)
    {
        unselectAll()
        button25.setImage(UIImage(named: "25Selected"), for: UIControlState.normal)
        tipAmount = 0.25
        let priceSet = Double(tipTextField.text!)
        let tipLabel2 = tipAmount * priceSet! / Double(numberPeople)
        tipLabel.text = String(format: "$%.2f", tipLabel2)
        let grandTotal = priceSet! + tipLabel2
        grandTotalLabel.text = String(format: "$%.2f", grandTotal)
    }
    


    @IBAction func button20(_ sender: Any)
    {
        unselectAll()
        button20.setImage(UIImage(named: "20Selected"), for: UIControlState.normal)
        tipAmount = 0.20
        let priceSet = Double(tipTextField.text!)
        let tipLabel2 =  tipAmount * priceSet! / Double(numberPeople)
        tipLabel.text = String(format: "$%.2f", tipLabel2)
        let grandTotal = priceSet! + tipLabel2
        grandTotalLabel.text = String(format: "$%.2f", grandTotal)
    }
    
    @IBAction func button15(_ sender: Any)
    {
        unselectAll()
        button15.setImage(UIImage(named: "15Selected"), for: UIControlState.normal)
        tipAmount = 0.15
        let priceSet = Double(tipTextField.text!)
        let tipLabel2 =  tipAmount * priceSet! / Double(numberPeople)
        tipLabel.text = String(format: "$%.2f", tipLabel2)
        let grandTotal = priceSet! + tipLabel2
        grandTotalLabel.text = String(format: "$%.2f", grandTotal)
    }
    
    @IBAction func button10(_ sender: Any)
    {
        unselectAll()
        button10.setImage(UIImage(named: "10Selected"), for: UIControlState.normal)
        tipAmount = 0.10
        let priceSet = Double(tipTextField.text!)
        let tipLabel2 =  tipAmount * priceSet! / Double(numberPeople)
        tipLabel.text = String(format: "$%.2f", tipLabel2)
        let grandTotal = priceSet! + tipLabel2
        grandTotalLabel.text = String(format: "$%.2f", grandTotal)
    }
    
    @IBAction func upArrow(_ sender: Any)
    {
      numberOfPeople.text = "\(numberPeople)"
      numberPeople += 1
     
      
    }
    
    @IBAction func downArrow(_ sender: Any)
    {
        if numberPeople > 1
        {
        
        numberOfPeople.text = "\(numberPeople)"
        numberPeople -= 1
       
        }
   }
    
    func unselectAll()
    {
        button25.setImage(UIImage(named: "25Unselected"), for: UIControlState.normal)
        button20.setImage(UIImage(named: "20Unselected"), for: UIControlState.normal)
        button15.setImage(UIImage(named: "15UnSelected"), for: UIControlState.normal)
        button10.setImage(UIImage(named: "10Unselected"), for:  UIControlState.normal)
    }
    
    

    
    }




