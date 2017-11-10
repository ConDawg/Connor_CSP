//
//  ImpactViewController.swift
//  Connor_CSP
//
//  Created by Johnson, Connor on 11/8/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class ImpactViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    public func text() -> Void
    {
        problem.text = "Climate change is a growing issue in 2017.  Climate change caouses storms, droughts, pollution, and a overall temperature increase(bad for growing crops)"
        
        connections.text = "I feel that climate change could impact the world to a point that could make the planet inhabitable.  Something needs to be done for the sake of our livelyhood and our planet. "
    }
    @IBOutlet weak var problem: UILabel!
    
    @IBOutlet weak var connections: UILabel!
    
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
