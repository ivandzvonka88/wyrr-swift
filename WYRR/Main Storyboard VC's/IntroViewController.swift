//
//  IntroViewController.swift
//  AbiliQuest
//
//  Created by Apple on 27/02/21.
//

import UIKit
import AVKit
import AVFoundation
import SwiftyJSON

class IntroViewController: UIViewController {
    
    var player : AVPlayer!
    
    var DeviceId = ""
    var adID = ""
//    var userTimeStampp = ""
    
    
    
    var token : JSON = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        
        self.DeviceId = UIDevice.current.identifierForVendor!.uuidString
        print(self.DeviceId)
        
        let timestamp = NSDate().timeIntervalSince1970
        let myTimeInterval = TimeInterval(timestamp)
        let USERTIMESTAMPP = NSDate(timeIntervalSince1970: TimeInterval(myTimeInterval))

        print(USERTIMESTAMPP)
        
        // Do any additional setup after loading the view.
        playVideo()
        
        NotificationCenter.default.addObserver(self, selector: #selector(playerDidFinishPlaying), name: .AVPlayerItemDidPlayToEndTime, object: nil)
        
        
//        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime,
//                                               object: nil,
//                                               queue: nil) { [weak self] note in
//            self?.player.seek(to: CMTime.zero)
//            self?.player.play()
//        }
        
//        let blur = UIView(frame: self.view.frame)
//        blur.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.3995245119)
//        self.view.addSubview(blur)
        
    }
    
    @objc func playerDidFinishPlaying() {
        self.performSegue(withIdentifier: "intro", sender: self)
    }
    
    private func playVideo() {
        guard let path = Bundle.main.path(forResource: "intro", ofType:"mp4") else {
            debugPrint("intro.mp4 not found")
            return
        }
        player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = .resizeAspectFill
        playerLayer.frame = self.view.bounds
        self.view.layer.addSublayer(playerLayer)
        player.play()
        
    }
    
    @IBAction func btn_next(_ sender: Any) {
        
    }
    

   
    
}
