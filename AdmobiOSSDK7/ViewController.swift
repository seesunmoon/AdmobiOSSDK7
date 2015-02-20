//
//  ViewController.swift
//  AdmobiOSSDK7
//
//  Created by Yi Sun on 2015-02-16.
//  Copyright (c) 2015 YS. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {

    @IBOutlet weak var admobBanner: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // display google admob ads here
        // use your own admob ad unit id
        admobBanner.adUnitID = "ca-app-pub-4292384826404356/5271761460"
        admobBanner.rootViewController = self
        self.view.addSubview(admobBanner)
        var request: GADRequest = GADRequest()
        request.testDevices = [""]
        admobBanner.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

