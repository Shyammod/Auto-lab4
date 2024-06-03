//
//  ViewController.swift
//  Assign
//
//  Created by user228349 on 6/2/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var First: UITextField!
    @IBOutlet weak var Surname: UITextField!
    @IBOutlet weak var City: UITextField!
    @IBOutlet weak var Address: UITextField!
    @IBOutlet weak var DOB: UITextField!
    @IBOutlet weak var Info: UITextView!
    @IBOutlet weak var mylbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Reset(_ sender: Any) {
        First.text = ""
        Surname.text = ""
        City.text = ""
        Address.text = ""
        DOB.text = ""
        Info.text = ""
    }
    
    @IBAction func Decline(_ sender: Any) {
        First.text = ""
        Surname.text = ""
        City.text = ""
        Address.text = ""
        DOB.text = ""
        Info.text = ""
        mylbl.text = "user declined"
    }
    
    @IBAction func Accept(_ sender: Any) {
        if First.text == "" || Surname.text == "" || City.text == "" || Address.text == "" || DOB.text == "" {
            mylbl.text = " fill the field."
            
        }
    else {
    let birthdateformatter = DateFormatter()
    birthdateformatter.dateFormat = "MM/dd/yyyy"
    if let birthdate = birthdateformatter.date(from: DOB.text!)  {
                
    let calendar = Calendar.current
    let age = calendar.dateComponents([.year], from: birthdate, to: Date())
                
    if (age.year ?? 0) >= 18 {
    Info.text = "I, \(First.text!)\(Surname.text!), currently living at \(Address.text!) do hereby accept terms and conditions assignment.\n\nI am \(age.year ?? 0) and therefore able to accept."
    mylbl.text = " Succesfully accepted terms & condition"
                    
    } else {
    mylbl.text = "you are not eligible to accept terms and condition as you are u undern 18!"
    }
    } else {
    mylbl.text = "Enter valid DOB in formatte MM/dd/yyyy"
   }
 }
 }
}


    
   


