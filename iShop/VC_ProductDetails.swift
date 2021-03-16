//
//  VC_ProductDetails.swift
//  iShop
//
//  Created by Keval on 3/17/21.
//

import UIKit

class VC_ProductDetails: UIViewController {

    @IBOutlet weak var uiProdName: UILabel!
    @IBOutlet weak var uiProdImage: UIImageView!
    
    var selectedProduct: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let prod = selectedProduct {
            uiProdName.text = selectedProduct?.prodName
            uiProdImage.image = UIImage(named: prod.prodImage)
        }
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
