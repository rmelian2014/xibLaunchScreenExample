//
//  ViewController.swift
//  CornersViewSO
//
//  Created by Reinier Melian on 5/31/17.
//  Copyright © 2017 Reinier Melian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cornerView: CornerView!
    
    var cornerViewCode : CornerView?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.cornerViewCode = CornerView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        self.view.addSubview(self.cornerViewCode!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

