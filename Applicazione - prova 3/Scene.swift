//
//  Scene.swift
//  Mistery Tales
//
//  Created by Team A on 02/10/17.
//  Copyright © 2017 iOSFoundation. All rights reserved.
//

import SpriteKit
import ARKit
import UIKit
import Foundation
import UserNotifications
import MapKit
import SwiftUI

class Scene: SKScene, CLLocationManagerDelegate {

    @State var show = false
    private let initialLaunchKey = "isInitialLaunch"
    
    let cPartenza = (40.8492993, 14.2549332)
    let cTomba = (40.8437171, 14.2523293)
    let alert = UIAlertView()
    
    let buttonPlay = SKSpriteNode(imageNamed: "play")
    let checkButton = SKSpriteNode(imageNamed: "check")
    
    let avatar = SKSpriteNode(imageNamed: "Vlady1")
    let avatar2 = SKSpriteNode(imageNamed: "Vlady2")
    let avatar3 = SKSpriteNode(imageNamed: "Vlady3")
    let avatar4 = SKSpriteNode(imageNamed: "Vlady4")
    let grave = SKSpriteNode(imageNamed: "draculaT")
    
    let finalWin = SKLabelNode(text: "Congratulation")
    let finalWin1 = SKLabelNode(text: "You win!")
    let killSound = SKAction.playSoundFileNamed("ghost", waitForCompletion: false)
    
    let imageOn1 = SKSpriteNode(imageNamed: "Vlady3")
    let imageOn2 = SKSpriteNode(imageNamed: "3")
    let imageOn3 = SKSpriteNode(imageNamed: "watch")

    let descOn1 = SKLabelNode(text: "Hi my name is Vladi. I will tell you")
    let descOn10 = SKLabelNode(text: "some stories about Dracula, he’s so scary!!")
    let descOn100 = SKLabelNode(text: "Just came with me and let’s play together")
    
    let descOn2 = SKLabelNode(text: "Let’s go inside the church and let’s")
    let descOn20 = SKLabelNode(text: "find all the object to solve the puzzle")
    let descOn200 = SKLabelNode(text: "and listen the stories.")
    
    let descOn3 = SKLabelNode(text: "Tell your parents to open the App")
    let descOn30 = SKLabelNode(text: "on their Apple Watch to let you stay safe")
    let descOn300 = SKLabelNode(text: "while solving the puzzle.")

    let buttonNext = SKSpriteNode(imageNamed: "get")
    
    var score = 0
    @State var contatore = 3
    
    override func didMove(to view: SKView) {
        
        
        if show || UserDefaults.standard.bool(forKey: initialLaunchKey) {
            
            setupManager()
            
            // Setup your scene here
            let Lschermo = size.width/100
            let Aschermo = size.height/100
            
            avatar.size = CGSize(width: 250, height: 250)
            avatar.position = CGPoint(x: size.width/2, y: size.height/2)
            addChild(avatar)
            avatar.isHidden = true
            
            avatar2.size = CGSize(width: 250, height: 250)
            avatar2.position = CGPoint(x: size.width/2, y: size.height/2)
            addChild(avatar2)
            
            avatar3.size = CGSize(width: 250, height: 250)
            avatar3.position = CGPoint(x: size.width/2, y: size.height/2)
            addChild(avatar3)
            avatar3.isHidden = true
            
            avatar4.size = CGSize(width: 250, height: 250)
            avatar4.position = CGPoint(x: size.width/2, y: size.height/2)
            addChild(avatar4)
            avatar4.isHidden = true
            
            buttonPlay.name = "play"
            buttonPlay.size = CGSize(width: 150, height: 150)
            buttonPlay.position = CGPoint(x: Lschermo*50, y: Aschermo*11)
            addChild(buttonPlay)
            
        } else {
            
            setupManager()
            
            // Setup your scene here
            let Lschermo = size.width/100
            let Aschermo = size.height/100
            
            avatar.size = CGSize(width: 250, height: 250)
            avatar.position = CGPoint(x: size.width/2, y: size.height/2)
            addChild(avatar)
            avatar.isHidden = true
            
            avatar2.size = CGSize(width: 250, height: 250)
            avatar2.position = CGPoint(x: size.width/2, y: size.height/2)
            addChild(avatar2)
            avatar2.isHidden = true
            
            avatar3.size = CGSize(width: 250, height: 250)
            avatar3.position = CGPoint(x: size.width/2, y: size.height/2)
            addChild(avatar3)
            avatar3.isHidden = true
            
            avatar4.size = CGSize(width: 250, height: 250)
            avatar4.position = CGPoint(x: size.width/2, y: size.height/2)
            addChild(avatar4)
            avatar4.isHidden = true
            
            buttonPlay.name = "play"
            buttonPlay.size = CGSize(width: 150, height: 150)
            buttonPlay.position = CGPoint(x: Lschermo*50, y: Aschermo*11)
            addChild(buttonPlay)
            buttonPlay.isHidden = true

            perform(#selector(prima), with: nil, afterDelay: 5.0)
            perform(#selector(seconda), with: nil, afterDelay: 10.0)
            perform(#selector(terza), with: nil, afterDelay: 15.0)
        }
    }
    
    @objc func prima() {
        
        imageOn1.size = CGSize(width: 250, height: 250)
        imageOn1.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(imageOn1)
        
        descOn1.fontSize = 20
        descOn1.fontName = "DevanagariSangamMN-Bold"
        descOn1.color = .white
        descOn1.position = CGPoint(x: size.width/2, y: size.height/3)
        addChild(descOn1)
        
        descOn10.fontSize = 20
        descOn10.fontName = "DevanagariSangamMN-Bold"
        descOn10.color = .white
        descOn10.position = CGPoint(x: size.width/2, y: (size.height/3)-20)
        addChild(descOn10)
        
        descOn100.fontSize = 20
        descOn100.fontName = "DevanagariSangamMN-Bold"
        descOn100.color = .white
        descOn100.position = CGPoint(x: size.width/2, y: (size.height/3)-40)
        addChild(descOn100)
    }
    
    @objc func seconda() {
        
        imageOn1.removeFromParent()
        descOn1.removeFromParent()
        descOn10.removeFromParent()
        descOn100.removeFromParent()
        
        imageOn2.size = CGSize(width: 250, height: 250)
        imageOn2.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(imageOn2)
        
        descOn2.fontSize = 20
        descOn2.fontName = "DevanagariSangamMN-Bold"
        descOn2.color = .white
        descOn2.position = CGPoint(x: size.width/2, y: size.height/3)
        addChild(descOn2)
        
        descOn20.fontSize = 20
        descOn20.fontName = "DevanagariSangamMN-Bold"
        descOn20.color = .white
        descOn20.position = CGPoint(x: size.width/2, y: (size.height/3)-20)
        addChild(descOn20)
        
        descOn200.fontSize = 20
        descOn200.fontName = "DevanagariSangamMN-Bold"
        descOn200.color = .white
        descOn200.position = CGPoint(x: size.width/2, y: (size.height/3)-40)
        addChild(descOn200)
    
    }
    
    @objc func terza() {
        
        imageOn2.removeFromParent()
        descOn2.removeFromParent()
        descOn20.removeFromParent()
        descOn200.removeFromParent()
        
        imageOn3.size = CGSize(width: 250, height: 250)
        imageOn3.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(imageOn3)
        
        descOn3.fontSize = 20
        descOn3.fontName = "DevanagariSangamMN-Bold"
        descOn3.color = .white
        descOn3.position = CGPoint(x: size.width/2, y: size.height/3)
        addChild(descOn3)
        
        descOn30.fontSize = 20
        descOn30.fontName = "DevanagariSangamMN-Bold"
        descOn30.color = .white
        descOn30.position = CGPoint(x: size.width/2, y: (size.height/3)-20)
        addChild(descOn30)
        
        descOn300.fontSize = 20
        descOn300.fontName = "DevanagariSangamMN-Bold"
        descOn300.color = .white
        descOn300.position = CGPoint(x: size.width/2, y: (size.height/3)-40)
        addChild(descOn300)
        
        buttonNext.name = "next"
        buttonNext.size = CGSize(width: 350, height: 350)
        buttonNext.position = CGPoint(x: (size.width/100)*50, y: (size.height/100)*11)
        addChild(buttonNext)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Get the first touch
        guard let touch = touches.first else {
            return
        }
        // Get the location in the AR scene
        let location = touch.location(in: self)
        
        // Get the nodes at that location
        let hit = nodes(at: location)
        
        // Get the first node (if any)
        if let node = hit.first {
            
            if node.name == "play"{
                
                let ins = SKAction.playSoundFileNamed("1dra.wav", waitForCompletion: true)
                let fadeOut = SKAction.fadeOut(withDuration: 0.5)
                let remove = SKAction.removeFromParent()
                let groupKillingActions = SKAction.group([ins, fadeOut])
                let sequenceAction = SKAction.sequence([groupKillingActions, remove])
                node.run(sequenceAction)

                perform(#selector(toContinue), with: nil, afterDelay: 65.0) // testa Vlady
                
            } else if node.name == "ghost" {
                
                let fadeOut = SKAction.fadeOut(withDuration: 0.5)
                let remove = SKAction.removeFromParent()
                
                // Group the fade out and sound actions
                let groupKillingActions = SKAction.group([fadeOut, killSound])
                // Create an action sequence
                let sequenceAction = SKAction.sequence([groupKillingActions, remove])
                
                // Excecute the actions
                node.run(sequenceAction)
                
                // Update the counter
                
                score += 1
                
                if score == 1 {
                    
                    avatar.isHidden = false
                    let ins = SKAction.playSoundFileNamed("2dra.wav", waitForCompletion: true)
                    let groupKillingActions = SKAction.group([ins])
                    let sequenceAction = SKAction.sequence([groupKillingActions])
                    node.run(sequenceAction)
                    
                    perform(#selector(toContinue), with: nil, afterDelay: 49.0) // pipistrello
                    
                } else if score == 2 {
                    
                    avatar3.isHidden = false
                    let ins = SKAction.playSoundFileNamed("3dra_1.wav", waitForCompletion: true)
                    let groupKillingActions = SKAction.group([ins])
                    let sequenceAction = SKAction.sequence([groupKillingActions])
                    node.run(sequenceAction)

                    perform(#selector(toContinue), with: nil, afterDelay: 46.0) // tomba
            
                } else if score == 3 {
                    
                    avatar4.isHidden = false
                    let ins = SKAction.playSoundFileNamed("4dra.wav", waitForCompletion: true)
                    let groupKillingActions = SKAction.group([ins])
                    let sequenceAction = SKAction.sequence([groupKillingActions])
                    node.run(sequenceAction)
                    
                    perform(#selector(addGrave), with: nil, afterDelay: 77.0)
                }
            } else if node.name == "check" {
                grave.removeFromParent()
                checkButton.removeFromParent()
                avatar4.isHidden = false
                
                let ins = SKAction.playSoundFileNamed("vin.aiff", waitForCompletion: true)
                let groupKillingActions = SKAction.group([ins])
                let sequenceAction = SKAction.sequence([groupKillingActions])
                node.run(sequenceAction)
                
                finalWin.fontSize = 50
                finalWin.fontName = "DevanagariSangamMN-Bold"
                finalWin.color = .purple
                finalWin.position = CGPoint(x: size.width/2, y: (size.height/2)+110)
                addChild(finalWin)
                
                finalWin1.fontSize = 50
                finalWin1.fontName = "DevanagariSangamMN-Bold"
                finalWin1.color = .purple
                finalWin1.position = CGPoint(x: size.width/2, y: (size.height/2)+50)
                addChild(finalWin1)
                
            } else if node.name == "next" {
                avatar2.isHidden = false
                buttonPlay.isHidden = false
                buttonNext.isHidden = true
                self.show = true
                UserDefaults.standard.set(true, forKey: self.initialLaunchKey)
                imageOn3.removeFromParent()
                descOn3.removeFromParent()
                descOn30.removeFromParent()
                descOn300.removeFromParent()
                buttonNext.removeFromParent()
            }
        }
    }
    
    //MARK: - Helper methods
    func randomFloat(min: Float, max: Float) -> Float {
        return (Float(arc4random()) / 0xFFFFFFFF) * (max - min) + min
    }
    
    func createGhostAnchor() {
        guard let sceneView = self.view as? ARSKView else{
            return
        }
        
        // Define 360º in radians
        let _360degrees = 2.0 * Float.pi
        // Create a rotation matrix in the X-axis
        let rotateX = simd_float4x4(SCNMatrix4MakeRotation(_360degrees * randomFloat(min: 0.0, max: 1.0), 1, 0, 0))
        
        // Create a rotation matrix in the Y-axis
        let rotateY = simd_float4x4(SCNMatrix4MakeRotation(_360degrees * randomFloat(min: 0.0, max: 1.0), 0, 1, 0))
        
        // Combine both rotation matrices
        let rotation = simd_mul(rotateX, rotateY)
        
        // Create a translation matrix in the Z-axis with a value between 1 and 2 meters
        var translation = matrix_identity_float4x4
        translation.columns.3.z = -1 - randomFloat(min: 0.0, max: 1.0)
        
        // Combine the rotation and translation matrices
        let transform = simd_mul(rotation, translation)
        
        // Create an anchor
        let anchor = ARAnchor(transform: transform)
        
        // Add the anchor
        sceneView.session.add(anchor: anchor)
    }
    
    @objc func toContinue() {
        avatar.isHidden = true
        avatar2.isHidden = true
        avatar3.isHidden = true
        avatar4.isHidden = true
        createGhostAnchor()
    }
    
    @objc func addGrave() {
        
        sendNotification()
        
        grave.position = CGPoint(x: size.width/2, y: size.height/2)
        grave.size = CGSize(width: 380, height: 209)
        addChild(grave)
        
        buttonPlay.removeFromParent()
        avatar.removeFromParent()
        avatar2.removeFromParent()
        avatar3.removeFromParent()
        avatar4.isHidden = true
        
        checkButton.name = "check"
        checkButton.size = CGSize(width: 350, height: 350)
        checkButton.position = CGPoint(x: (size.width/100)*50, y: (size.height/100)*11)
        addChild(checkButton)
        
    }
    
    func sendNotification() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound])  {
            success, error in
            if success {
                print("authorized")
            } else if let error = error {
                print(error.localizedDescription)
            }
        }
        
        let content = UNMutableNotificationContent()
        content.title = "Mistery tales"
        content.body = "The puzzle is solved! Let's find Dracula's grave"
        content.sound = UNNotificationSound.default
        
        //   Alternativa 1: dopo un certo tempo (in secondi)
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
        
        let request = UNNotificationRequest(identifier: "notification.parth.01", content: content, trigger: trigger)
        UNUserNotificationCenter.current().add(request)
    }
    
    var locationManager = CLLocationManager()
    
    func setupManager() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
    
            // Google says it's 5857 km so our result is only off by 2km which could be due to all kinds of things, not sure how google calculates the distance or which latitude and longitude google uses to calculate the distance.
            
//            L App funziona soltando se si è nel luogo circoscritto qui in basso, quindi se si vuole far
//            funzionare l'app anche altrove bisogna disabilitare questo if attraverso ==
//            Se invece ci si trova nella posizione desiderata alla funziona il !=
            if location.coordinate.latitude == haversineDistance(la1: cPartenza.0, lo1: cPartenza.1, la2: cTomba.0, lo2: cTomba.1) {
                buttonPlay.isHidden = true
                avatar.isHidden = true
                avatar2.isHidden = true
                
                alert.title = "Attention!"
                alert.message = "Wrong Location"
                alert.addButton(withTitle: "Got it!")
                alert.show()
            }
        
        }
    }
    
    func haversineDistance(la1: Double, lo1: Double, la2: Double, lo2: Double, radius: Double = 6367444.7) -> Double {
        
        let haversin = { (angle: Double) -> Double in
            return (1 - cos(angle))/2
        }
        
        let ahaversin = { (angle: Double) -> Double in
            return 2*asin(sqrt(angle))
        }
        
        // Converts from degrees to radians
        let dToR = { (angle: Double) -> Double in
            return (angle / 360) * 2 * .pi
        }
        
        let lat1 = dToR(la1)
        let lon1 = dToR(lo1)
        let lat2 = dToR(la2)
        let lon2 = dToR(lo2)
        
        return radius * ahaversin(haversin(lat2 - lat1) + cos(lat1) * cos(lat2) * haversin(lon2 - lon1))
    }
}
