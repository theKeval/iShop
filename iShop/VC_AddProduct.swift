//
//  VC_AddProduct.swift
//  iShop
//
//  Created by Keval on 3/16/21.
//

import UIKit

class VC_AddProduct: UIViewController {
    
    @IBOutlet weak var tfProdName: UITextField!
    @IBOutlet weak var tfProdDesc: UITextField!
    @IBOutlet weak var tfProdPrice: UITextField!
    @IBOutlet weak var stepperQuantity: UIStepper!
    @IBOutlet weak var tfQuantity: UITextField!
    @IBOutlet weak var btnCategElectronics: UIButton!
    @IBOutlet weak var btnCategFurniture: UIButton!
    @IBOutlet weak var btnCategFootwear: UIButton!
    
    @IBOutlet weak var pickerImage: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func stepperQuntClicked(_ sender: Any) {
    }
    
    @IBAction func rbElectronicsClicked(_ sender: Any) {
    }
    @IBAction func rbFootwearClicked(_ sender: Any) {
    }
    @IBAction func rbFurnitureClicked(_ sender: Any) {
    }
    
    @IBAction func addProduct(_ sender: Any) {
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension VC_AddProduct: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return MyData.imageList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return MyData.imageList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // selected row
    }
    
    
}
