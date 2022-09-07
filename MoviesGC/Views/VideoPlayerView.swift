//
//  VideoPlayerView.swift
//  MoviesGC
//
//  Created by guillermo chacon alcala on 15/08/22.
//

import SwiftUI
import AVFoundation

struct VideoPlayerView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        return PlayerUIView(frame: .zero)
    }
    
    
    func updateUIView(_ uiView:UIView, context: Context){
        
    }
}


class PlayerUIView: UIView{
    private var playerLayer=AVPlayerLayer()
    override init(frame: CGRect){
        super.init(frame: frame)
        
        
        //load Video
        let FileURL    = Bundle.main.url(forResource: "Gente", withExtension: "mp4")!
        let playerItem = AVPlayerItem(url: FileURL)
       
        //Setup player
        let player=AVPlayer(playerItem:playerItem)
        playerLayer.player=player
        playerLayer.videoGravity = .resizeAspectFill
        layer.addSublayer(playerLayer)
        
        //Play
        player.play()
        
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame=bounds
    }

required init?(coder:NSCoder){
    fatalError("Error")
    
}
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView()
    }
}
