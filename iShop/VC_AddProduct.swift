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
    
    var selectedCategory: Categories = Categories.Electronics
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // additional setup on initialization
        pickerImage.delegate = self
        pickerImage.dataSource = self
        
        tfQuantity.text = "0"
    }
    
    @IBAction func stepperQuntClicked(_ sender: UIStepper) {
        tfQuantity.text = String(Int(sender.value))
    }
    
    @IBAction func rbElectronicsClicked(_ sender: Any) {
        btnCategElectronics.isSelected = true
        btnCategFootwear.isSelected = false
        btnCategFurniture.isSelected = false
        
        selectedCategory = Categories.Electronics
    }
    @IBAction func rbFootwearClicked(_ sender: Any) {
        btnCategElectronics.isSelected = false
        btnCategFootwear.isSelected = true
        btnCategFurniture.isSelected = false
        
        selectedCategory = Categories.Footwear
    }
    @IBAction func rbFurnitureClicked(_ sender: Any) {
        btnCategElectronics.isSelected = false
        btnCategFootwear.isSelected = false
        btnCategFurniture.isSelected = true
        
        selectedCategory = Categories.Furniture
    }
    
    @IBAction func addProduct(_ sender: Any) {
        let product = Product(name: tfProdName.text!, desc: tfProdDesc.text!, category: selectedCategory, image: MyData.imageList[pickerImage.selectedRow(inComponent: 0)], price: Double(tfProdPrice.text!)!, quantity: Int(tfQuantity.text!)!)
        
        MyData.productList.append(product)
        
        print("\(product.prodName) added")
        
    }
    
    @IBAction func goBack(_ sender: Any) {
        // navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
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
