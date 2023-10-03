//
//  GameScene.swift
//  FlappyBird
//
//  Created by WEBSYSTEM-MAC8 on 2023/10/02.
//
import SpriteKit

class GameScene: SKScene {
    // SKView上にシーンが表示されたときに呼ばれるメソッド
    override func didMove(to view: SKView) {
        // 背景色を設定
        backgroundColor = UIColor(red: 0.15, green: 0.75, blue: 0.90, alpha: 1)
        
        // 地面の画像を読み込む
        let groundTexture = SKTexture(imageNamed: "ground")
        groundTexture.filteringMode = .nearest

        // テクスチャを指定してスプライトを作成する
        let groundSprite = SKSpriteNode(texture: groundTexture)

        // スプライトの表示する位置を指定する
        groundSprite.position = CGPoint(
            x: groundTexture.size().width / 2,
            y: groundTexture.size().height / 2
        )

        // シーンにスプライトを追加する
        addChild(groundSprite)
    }
}