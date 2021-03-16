//
//  ProductCell.swift
//  iShop
//
//  Created by Keval on 3/16/21.
//

import UIKit

class ProductCell: UITableViewCell {
    
    @IBOutlet weak var uiProdImage: UIImageView!
    @IBOutlet weak var uiProdName: UILabel!
    @IBOutlet weak var uiProdPrice: UILabel!
    @IBOutlet weak var uiProdDelete: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(prodInstance: Product) {
        uiProdImage.image = UIImage(named: prodInstance.prodImage)
        uiProdName.text = prodInstance.prodName
        uiProdPrice.text = "$ \(prodInstance.prodPrice)"
    }

    @IBAction func deleteProduct(_ sender: UIButton) {
        print("delete clicked")
        
        MyData.productList.removeAll(where: { (_product) -> Bool in
            _product.prodName == uiProdName.text!
        })
        
        // setSelected(true, animated: true)
        if let tvView = self.superview as! UITableView? {
            tvView.reloadData()
        }
        
    }
    
}
