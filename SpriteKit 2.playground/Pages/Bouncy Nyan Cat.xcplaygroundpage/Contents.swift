//: # NyanCats Bounce when They are Happy
//: Let's take our code from the [previous page](@previous) as a starting point to build from
import SpriteKit
import PlaygroundSupport
//Setting the Points for the Images
let frame = CGRect(x: 0, y: 0, width: 320, height: 256)
let midPoint = CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0 - 20)
let leftPoint = CGPoint(x: frame.size.width / 2.0 - 100, y: frame.size.height / 2.0)
let rightPoint = CGPoint(x: frame.size.width / 2.0 + 100, y: frame.size.height / 2.0)
let topPoint = CGPoint(x: frame.size.width / 2.0 - 70, y: frame.size.height / 2.0 + 70)
let bottomPoint = CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0)

var scene = SKScene(size: frame.size)
//Setting Images and where they are
let Christmas1 = SKSpriteNode(imageNamed: "Christmas")
Christmas1.position = midPoint
Christmas1.setScale(0.1)


let Christmas2 = SKSpriteNode(imageNamed: "Christmas")
Christmas2.position = leftPoint
Christmas2.setScale(0.1)

let Christmas3 = SKSpriteNode(imageNamed: "Christmas")
Christmas3.position = rightPoint
Christmas3.setScale(0.1)

let Santa = SKSpriteNode(imageNamed: "Santa")
Santa.position = topPoint
Santa.setScale(0.3)

let Landscape = SKSpriteNode(imageNamed: "Snow")
Landscape.position = bottomPoint
Landscape.setScale(0.5)

//Creating the Snow particles in the background
let emitter = SKEmitterNode()
emitter.particleLifetime = 40
emitter.particleBlendMode = SKBlendMode.alpha
emitter.particleBirthRate = 3
emitter.particleSize = CGSize(width: 4,height: 4)
emitter.particleColor = SKColor(red: 100, green: 100, blue: 255, alpha: 1)
emitter.position = CGPoint(x:frame.size.width,y:midPoint.y)
emitter.particleSpeed = 16
emitter.particleSpeedRange = 100
emitter.particlePositionRange = CGVector(dx: 0, dy: frame.size.height)
emitter.emissionAngle = 3.14
emitter.advanceSimulationTime(40)
emitter.particleAlpha = 0.5
emitter.particleAlphaRange = 0.5
scene.addChild(emitter)
//: ## Insert Happiness to Play Again
//: To show how happy Nyan Cat is, let's are run an action that repeats a sequence of Nyan Cat going up and down for ever
//Create the bouncing tree movement pattern
let actionMoveUp = SKAction.moveBy(x: 0, y: 10, duration: 0.15)
let actionMoveDown = SKAction.moveBy(x: 0, y: -10, duration: 0.15)
let actionSequence = SKAction.sequence([actionMoveUp, actionMoveDown])
let actionRepeat = SKAction.repeatForever(actionSequence)

//Create santas movement pattern
let actionMoveRight2 = SKAction.moveBy(x: 30, y: 0, duration: 1)
let actionMoveLeft2 = SKAction.moveBy(x: -20, y: 0, duration: 1)
let actionSequence2 = SKAction.sequence([actionMoveRight2,actionMoveLeft2])
let actionRepeat2 = SKAction.repeatForever(actionSequence2)

//Make the images run their respective movement pattern (if needed)
Christmas1.run(actionRepeat)
Christmas2.run(actionRepeat)
Christmas3.run(actionRepeat)
Santa.run(actionRepeat2)

//Setting the position on the Z axis, determining what picture is infront of other pictures (I.E. Snow landscape is positioned behind the trees)

Christmas1.zPosition = 11
Christmas2.zPosition = 11
Christmas3.zPosition = 11
Landscape.zPosition = 9
Santa.zPosition = 10

//Adding the images to the scene
scene.addChild(Christmas1)
scene.addChild(Christmas2)
scene.addChild(Christmas3)
scene.addChild(Santa)
scene.addChild(Landscape)
//: ## Insert Happiness to Play Again
//: To show how happy Nyan Cat is, let's are run an action that repeats a sequence of Nyan Cat going up and down for ever


//: And show the scene in the liveView
//Letting the scene present
let view = SKView(frame: frame)
view.presentScene(scene)
PlaygroundPage.current.liveView = view

//: Well that's great... But I think Nyan Cat is a space cat so let's [add stars on the next page](@next)
