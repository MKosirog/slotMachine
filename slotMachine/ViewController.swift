//
//  ViewController.swift
//  slotMachine
//
//  Created by Mark C. Kosirog on 6/17/16.
//  Copyright © 2016 Mark C. Kosirog. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    
    var slotEmojis = ["👺","😈","👿","👽","👻"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func screenTap(sender: UITapGestureRecognizer) {
        
        print("tapped")
        let randomEmoji1 = Int(arc4random_uniform(UInt32(slotEmojis.count)))
        let randomEmoji2 = Int(arc4random_uniform(UInt32(slotEmojis.count)))
        let randomEmoji3 = Int(arc4random_uniform(UInt32(slotEmojis.count)))
       
        
        label1.text = slotEmojis[randomEmoji1]
        label2.text = slotEmojis[randomEmoji2]
        label3.text = slotEmojis[randomEmoji3]
        
    if label1.text == label2.text && label2.text == label3.text
        {
            print("winner")
            alert ()
        }
    }
    
    func  alert()
    {
        let myAlert = UIAlertController(title: "Jackpot", message: "You win $1000", preferredStyle: UIAlertControllerStyle.Alert)
        myAlert.addAction(UIAlertAction (title: "Play Again?", style: UIAlertActionStyle.Default, handler: { sender in
            
            self.label1.text = self.slotEmojis[0]
            self.label2.text = self.slotEmojis[0]
            self.label3.text = self.slotEmojis[0]
    }))
        presentViewController(myAlert,animated: true, completion: nil)
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

