//
//  ViewController.swift
//  VeservDemo
//
//  Created by Aditya on 05/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: VARIABLE
    var mediaURL = "https://cfvod.kaltura.com/hls/p/2215841/sp/221584100/serveFlavor/entryId/1_w9zx2eti/v/1/ev/5/flavorId/1_,1obpcggb,3f4sp5qu,1xdbzoa6,k16ccgto,r6q0xdb6,/name/a.mp4/index.m3u8.urlset/master.m3u8"
    
    // MARK: OUTLET
    @IBOutlet weak var assignment_1: CustomView!
    
    // MARK: VIEW
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Assignment 1")
        print("Currently it's displaying on screen now!")
        assignment_1.settingUpVideoOnView(mediaURL, width: 300, height: 250, resize: .resizeAspect)
        
        print("")
        print("Assignment 2")
        print("Currently it's displaying on the console!")
        print("------------")
        for i in 1...5 {
            var temp = 1
            for j in 1...i {
                print(temp, terminator : "")
                temp = temp * (i - j) / (j)
            }
            print("")
        }
        print("------------")
    }

}

