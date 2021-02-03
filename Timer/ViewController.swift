//
//  ViewController.swift
//  Timer
//
//  Created by Vincent Renard on 03/02/2021.
//

import UIKit

class ViewController: UIViewController {
    var nbrs:Int64=0
    @IBOutlet weak var timeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.incr), userInfo: nil, repeats: true)
        //Timer.invalidate(<#T##self: Timer##Timer#>)
    }
    @objc func incr() {
        nbrs+=1;
        timeLabel.text=nbrs
        
    }


}

