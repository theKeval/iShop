//
//  VC_ProductList.swift
//  iShop
//
//  Created by Keval on 3/16/21.
//

import UIKit

class VC_ProductList: UIViewController {

    @IBOutlet weak var tvProducts: UITableView!
    
    var selectedProduct: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tvProducts.delegate = self
        tvProducts.dataSource = self
        tvProducts.tableFooterView = UIView()
        
        MyData.fillData()
        tvProducts.reloadData()
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        let pdvc = segue.destination as! VC_ProductDetails
        pdvc.selectedProduct = selectedProduct
    }
    

}

extension VC_ProductList: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        MyData.productList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let selectedProduct = MyData.productList[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellProduct") as! ProductCell
        cell.setData(prodInstance: selectedProduct)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedProduct = MyData.productList[indexPath.row]
        performSegue(withIdentifier: "segue_showProductDetails", sender: self)
    }
    
    
}
