//
//  GuitarDetailedViewController.swift
//  guitarList
//
//  Created by Carlos Alfonso on 1/19/17.
//  Copyright © 2017 Carlos Alfonso. All rights reserved.
//

import UIKit

class GuitarDetailedViewController: UIViewController {
    var detailGuitar:Guitar?
    @IBOutlet weak var DetailedViewControllerTitle: UILabel!

    @IBOutlet weak var DetailedViewControllerAuthor: UILabel!
    @IBOutlet weak var DetailedViewControllerImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DetailedViewControllerTitle.text = detailGuitar?.name
        DetailedViewControllerAuthor.text = detailGuitar?.subtitle

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


