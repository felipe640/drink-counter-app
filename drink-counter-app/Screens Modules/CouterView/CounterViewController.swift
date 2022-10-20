//
//  CounterViewController.swift
//  drink-counter-app
//
//  Created by Felipe on 21/09/22.
//

import UIKit
import RealmSwift

class CounterViewController: UIViewController {
    fileprivate var viewModel = CounterViewModel()
    
    @IBOutlet weak var nameTexField: UITextField!
    @IBOutlet weak var priceTexField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func buttonAction(_ sender: Any) {
        var name = nameTexField.text
        var price = priceTexField.text
        
        let realm = try! Realm()
        let pro = Product()
        pro.name = name ?? ""
        pro.price = Float(priceTexField.text ?? "") ?? 0.0
        
        try! realm.write {
            realm.add(pro)
        }
        
        retriveAllElements()
    }
    
    func retriveAllElements() {
        let realm = try! Realm()
        // Access all dogs in the realm
        let dogs = realm.objects(Product.self)
        print("Estos son mis resultados guardados en realm")
        print(dogs)
    }
}
