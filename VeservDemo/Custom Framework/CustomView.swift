//
//  CustomView.swift
//  VeservDemo
//
//  Created by Aditya on 05/01/22.
//

import UIKit
import AVFoundation

class CustomView: UIView {
    
    // MARK: VARIABLE
    private let playerLayer = AVPlayerLayer()
    
    // MARK: OUTLET
    @IBOutlet weak var contentView: UIView!

    // MARK: INIT
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
    private func initSubviews() {
        let nib = UINib(nibName: "CustomView", bundle: nil)
        nib.instantiate(withOwner: self, options: nil)
        contentView.frame = bounds
        contentView.backgroundColor = UIColor.secondarySystemBackground
        addSubview(contentView)
    }
    
    // MARK: SETTING UP MEDIA URL
    /// Add a video to the view.
    func settingUpVideoOnView(_ urlString: String, width: CGFloat = 300, height: CGFloat = 250, resize: AVLayerVideoGravity = .resize) {
        if let videoURL = URL(string: urlString) {
            let player = AVPlayer(url: videoURL)
            
            playerLayer.player = player
            playerLayer.frame = settingUpVideoToCenter(width: width, height: height)
            playerLayer.videoGravity = resize
            contentView.layer.addSublayer(playerLayer)
            
            player.play()
        }
    }
    
    // MARK: SETTING UP MEDIA TO THE CENTER OF THE VIEW
    private func settingUpVideoToCenter(width: CGFloat, height: CGFloat) -> CGRect {
        let currentScreenWidth = contentView.layer.frame.width
        let currentScreenHeight = contentView.layer.frame.height
        let centerX = (currentScreenWidth - width) / 2
        let centerY = (currentScreenHeight - height) / 2
        return CGRect(x: centerX, y: centerY, width: width, height: height)
    }

}
