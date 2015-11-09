//
//  ViewController.swift
//  Navigation Bar
//
//  Created by Anoop Narayanan on 11/8/15.
//  Copyright © 2015 APNApp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var time = 0
    var timer = NSTimer()
    

    @IBOutlet var resultDisplay: UILabel!
    
    
    @IBAction func startTimer(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("displayResult"), userInfo: nil, repeats: true)
    }
    
    @IBAction func stopTimer(sender: AnyObject) {
                timer.invalidate()
    }
    
    @IBAction func resetTimer(sender: AnyObject) {
        time = 0
        resultDisplay.text = String(time)
        timer.invalidate()
        
    }
    
    
    func displayResult() {
        time++
        resultDisplay.text = String(time) //We can also use "\(time)"
    }

    //What ever is inside this method wil get executed on load.
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

