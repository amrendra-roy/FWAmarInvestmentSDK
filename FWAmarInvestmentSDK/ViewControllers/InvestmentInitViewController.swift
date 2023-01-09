//
//  InvestmentInitViewController.swift
//  FWAmarInvestmentSDK
//
//  Created by Amrendra on 08/01/23.
//

import UIKit

class InvestmentInitViewController: UIViewController {

    var callBackHandler: (([String: String])-> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func dismissInvesmentVC(_ sender: UIButton) {
        self.navigationController?.dismiss(animated: true, completion: {[weak self] in
            self?.callBackHandler?(["UserAction": "Cancel by user"])
        })
    }

}
