//: # NyanCats Bounce when They are Happy
//: Let's take our code from the [previous page](@previous) as a starting point to build from
import SpriteKit
import PlaygroundSupport

let frame = CGRect(x: 0, y: 0, width: 320, height: 256)
let midPoint = CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0)
let leftPoint = CGPoint(x: frame.size.width / 2.0 - 100, y: frame.size.height / 2.0)
let rightPoint = CGPoint(x: frame.size.width / 2.0 + 100, y: frame.size.height / 2.0)
let topPoint = CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0 + 100)

var scene = SKScene(size: frame.size)

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
Christmas3.position = rightPoint
Christmas3.setScale(0.1)
//: ## Insert Happiness to Play Again
//: To show how happy Nyan Cat is, let's are run an action that repeats a sequence of Nyan Cat going up and down for ever
let actionMoveUp = SKAction.moveBy(x: 0, y: 10, duration: 0.15)
let actionMoveDown = SKAction.moveBy(x: 0, y: -10, duration: 0.15)
let actionSequence = SKAction.sequence([actionMoveUp, actionMoveDown])
let actionRepeat = SKAction.repeatForever(actionSequence)


let actionMoveRight2 = SKAction.moveBy(x: 100, y: 0, duration: 0.20)
let actionMoveLeft2 = SKAction.moveBy
(X: -100, y: 0, duration: 0.20)
let actionSequence2 = SKAction.sequence([actionMoveRight2,actionMoveLeft2])
let actionRepeat2 = SKAction.repeatForever(actionSequence2)


Christmas1.run(actionRepeat)
Christmas2.run(actionRepeat)
Christmas3.run(actionRepeat)
Santa.run(actionRepeat2)
Christmas1.zPosition = 10
Christmas2.zPosition = 10
Christmas3.zPosition = 10
Santa.zPosition = 10
// Ensure sprite is above background
scene.addChild(Christmas1)
scene.addChild(Christmas2)
scene.addChild(Christmas3)
scene.addChild(Santa)

//: ## Insert Happiness to Play Again
//: To show how happy Nyan Cat is, let's are run an action that repeats a sequence of Nyan Cat going up and down for ever


//: And show the scene in the liveView

let view = SKView(frame: frame)
view.presentScene(scene)
PlaygroundPage.current.liveView = view

//: Well that's great... But I think Nyan Cat is a space cat so let's [add stars on the next page](@next)
