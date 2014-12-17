//
//  ViewController.swift
//  babamassagedemo
//
//  Created by Karen Wu on 12/9/14.
//  Copyright (c) 2014 Karen Wu. All rights reserved.
//

import UIKit

class AppointmentViewController: UIViewController, UITextFieldDelegate{
    
    /*@IBOutlet weak var massageTypePicker: UIPickerView!
    @IBOutlet weak var oneClick: UIButton!
    @IBOutlet weak var twoClick: UIButton!
    @IBOutlet weak var threeClick: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    */
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldAddress: UITextField!
    @IBOutlet weak var textFieldApt: UITextField!
    @IBOutlet weak var textFieldZip: UITextField!
    @IBOutlet weak var textFieldCell: UITextField!
    
    //@IBOutlet weak var oneClick: UIButton!
    @IBOutlet weak var oneClick: UIButton!
    @IBOutlet weak var twoClick: UIButton!
    @IBOutlet weak var threeClick: UIButton!
    @IBOutlet weak var bodyButton: UIButton!
    @IBOutlet weak var footButton: UIButton!
    
    //@IBOutlet weak var massageTypePicker: UIPickerView!
    @IBOutlet weak var nextButton: UIButton!
    
    
    let tintedBlue = UIColor(red: 0.7, green: 0.9, blue: 1.0, alpha: 1.0)
    let skyBlue = UIColor(red: 0.19, green: 0.77, blue: 1.0, alpha: 1.0)
    //let massageType = ["body", "foot"]
    //let massageLength = ["1", "2" , "3"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        oneClick.frame = CGRectMake(160, 100, 20, 20)
        oneClick.layer.cornerRadius = 0.5 * oneClick.bounds.size.width
        twoClick.frame = CGRectMake(160, 100, 20, 20)
        twoClick.layer.cornerRadius = 0.5 * twoClick.bounds.size.width
        threeClick.frame = CGRectMake(160, 100, 20, 20)
        threeClick.layer.cornerRadius = 0.5 * threeClick.bounds.size.width
        bodyButton.frame = CGRectMake(160, 100, 20, 20)
        bodyButton.layer.cornerRadius = 0.5 * bodyButton.bounds.size.width
        footButton.frame = CGRectMake(160, 100, 20, 20)
        footButton.layer.cornerRadius = 0.5 * footButton.bounds.size.width

        
        nextButton.frame = CGRectMake(160, 100, 20, 20)
        nextButton.layer.cornerRadius = 0.5 * nextButton.bounds.size.width
        
        textFieldAddress.delegate = self
        textFieldApt.delegate = self
        textFieldCell.delegate = self
        textFieldEmail.delegate = self
        textFieldZip.delegate = self
        textFieldName.delegate = self
        
        //massageTypePicker.tag = 0
        //massageTypePicker.dataSource = self
        //massageTypePicker.delegate = self
        
    }
    
   override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    /*
    //MARK: - Delegates and data sources
    //MARK: Data Sources
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // if(pickerView.tag == 0){
        return massageType.count
        
        
    }
    //MARK: Delegates
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        //if(pickerView.tag == 0){
        return massageType[row]
        //}
        //return massageLength[row]
        
    }*/
    
    @IBAction func oneClicked(sender: AnyObject) {
             //if (oneClick.selected == false){
        oneClick.backgroundColor = skyBlue
        oneClick.selected = true
        //}
        twoClick.backgroundColor = tintedBlue
        twoClick.selected = false
        threeClick.backgroundColor = tintedBlue
        threeClick.selected = false
        
    }
    
    
    @IBAction func twoClicked(sender: AnyObject) {
                //if (twoClick.selected == false){
        twoClick.backgroundColor = skyBlue
        twoClick.selected = true
        //}
        oneClick.backgroundColor = tintedBlue
        oneClick.selected = false
        threeClick.backgroundColor = tintedBlue
        threeClick.selected = false
        
        
    }
    
    @IBAction func threeClicked(sender: AnyObject) {
        
        // if (threeClick.selected == false){
        threeClick.backgroundColor = skyBlue
        threeClick.selected = true
        // }
        oneClick.backgroundColor = tintedBlue
        oneClick.selected = false
        twoClick.backgroundColor = tintedBlue
        twoClick.selected = false
        
    }
    
    @IBAction func bodyClicked(sender: AnyObject) {
        bodyButton.backgroundColor = skyBlue
        bodyButton.selected = true
        
        footButton.backgroundColor = tintedBlue
        footButton.selected = false
    }
    @IBAction func footClicked(sender: AnyObject) {
        footButton.backgroundColor = skyBlue
        footButton.selected = true
        
        bodyButton.backgroundColor = tintedBlue
        bodyButton.selected = false
    }
    /*@IBAction func nextClicked(sender: AnyObject) {
    
    let secondViewController = self.storyboard?.instantiateViewControllerWithIdentifier("PaymentViewController") as PaymentViewController
    
    self.navigationController?.pushViewController(secondViewController, animated: true)
    }*/
}

