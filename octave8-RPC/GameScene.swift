//
//  GameScene.swift
//  octave8-RPC
//
//  Created by andyhaz on 10/5/21.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var playerNode : SKShapeNode?
    private var spinnyNode : SKShapeNode?

    override func didMove(to view: SKView) {
        print("init")
        let myImage = sprintImage()
        addChild(myImage.sprite())
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
               let location = touch.location(in: self)
               print(location)
           }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
//load image
class sprintImage: SKSpriteNode {
    
    func sprite() -> SKSpriteNode {
        let myImage = SKSpriteNode(imageNamed: "game-card-title")
        myImage.setScale(0.3)
        myImage.position =  CGPoint(x: 200, y: 100)
        return myImage
    }
}
