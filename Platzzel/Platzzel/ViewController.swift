//
//  ViewController.swift
//  Platzzel
//
//  Created by Moises on 27/02/18.
//  Copyright © 2018 Moises. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var board: UIView!
    var tileWidth : CGFloat = 0
    var tileCenterX : CGFloat = 0
    var tileCenterY : CGFloat = 0
    
    var tileArray : NSMutableArray = []
    var tileCenterArray : NSMutableArray = []
    var tileEmptyCenter : CGPoint = CGPoint(x: 0, y: 0)
    
    @IBAction func btnRandom(_ sender: Any) {
        randomTiles()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeTiles()
        randomTiles()
    }
    
    func makeTiles(){
        self.tileArray = []
        self.tileCenterArray = []
        let boarWidth = self.board.frame.width
        self.tileWidth = boarWidth / 4
        self.tileCenterX = self.tileWidth / 2
        self.tileCenterY = self.tileWidth / 2
        var tileNumber : Int = 1
        
        for _ in 0..<4{
            for _ in 0..<4{
                let tileFrame : CGRect = CGRect(x: 0, y: 0, width: self.tileWidth - 2, height: self.tileWidth - 2)
                let tile : CustomLabel = CustomLabel(frame: tileFrame)
                let currentCenter : CGPoint = CGPoint(x: self.tileCenterX, y: self.tileCenterY)
                tile.center = currentCenter
                tile.originCenter = currentCenter
                if tileNumber <= 16{
                    tile.backgroundColor = UIColor(patternImage: UIImage(named: "\(tileNumber).jpg")!)
                } else {
                    tile.backgroundColor = UIColor.gray
                }
                tile.textAlignment = NSTextAlignment.center
                tile.isUserInteractionEnabled = true
                self.tileCenterArray.add(currentCenter)
                self.board.addSubview(tile)
                tileNumber = tileNumber + 1
                self.tileArray.add(tile)
                self.tileCenterX = self.tileCenterX + self.tileWidth
            }
            self.tileCenterX = self.tileWidth / 2
            self.tileCenterY = self.tileCenterY + self.tileWidth
        }
        
        let lastTile : CustomLabel = self.tileArray.lastObject as! CustomLabel
        lastTile.removeFromSuperview()
        self.tileArray.removeObject(at: 15)
    }
    
    func randomTiles(){
        let tempTileCenterArray : NSMutableArray = self.tileCenterArray.mutableCopy() as! NSMutableArray
        for anyTile in self.tileArray{
            let randomIndex : Int = Int(arc4random()) % tempTileCenterArray.count
            let randomCenter : CGPoint = tempTileCenterArray[randomIndex] as! CGPoint
            (anyTile as! CustomLabel).center = randomCenter
            tempTileCenterArray.removeObject(at: randomIndex)
        }
        self.tileEmptyCenter = tempTileCenterArray[0] as! CGPoint
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let currentTouch : UITouch = touches.first!
        if(self.tileArray.contains(currentTouch.view as Any)){
            let touchLabel : CustomLabel = currentTouch.view as! CustomLabel
            let xDiff : CGFloat = touchLabel.center.x - self.tileEmptyCenter.x
            let yDiff : CGFloat = touchLabel.center.y - self.tileEmptyCenter.y
            let distance : CGFloat = sqrt(pow(xDiff, 2) + pow(yDiff, 2))
            if distance == self.tileWidth{
                let tempCenter : CGPoint = touchLabel.center
                UIView.beginAnimations(nil, context: nil)
                UIView.setAnimationDuration(0.2)
                touchLabel.center = self.tileEmptyCenter
                UIView.commitAnimations()
                self.tileEmptyCenter = tempCenter
            }
        }
    }
}

class CustomLabel : UILabel{
    var originCenter : CGPoint = CGPoint(x: 0, y: 0)
}

