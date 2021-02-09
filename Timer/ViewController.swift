//
//  ViewController.swift
//  Timer
//
//  Created by Vincent Renard on 03/02/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var nbrs:Int64 = 0
    
    
    
    @IBOutlet weak var stopButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    var timer = Timer()
    
    @IBAction func stopTimer(_ sender: UIButton) {
        timer.fire()
        timer.invalidate()
        
    }
    @IBAction func play(_ sender: UIButton) {
        nbrs=0;
        timer.invalidate()
        timer=Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.incr), userInfo: nil, repeats: true)
        
    
    }
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @objc func incr() {
        nbrs+=1;
        timeLabel.text=prettyPrintTime(nsecs: nbrs);
        
    }
    
    func prettyPrintTime(nsecs: Int64) -> String {
        
        return String(nbrs)+" s";
    }
    
    


}

