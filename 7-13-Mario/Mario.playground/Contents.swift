/*:
 # Mario
 
 Add your Mario solution (however far you got) to the space below.
 
 Then, commit your work.
 
 Finally, push your work to the remote origin for your repository on GitHub.com.
 
 We will go through this together.
 */

// Add your code below

func levelCost(heights: [Int], maxJump : Int) -> Int {

    var energyUse : Int = 0

for i in 0...heights.count - 2 {

let currentPlatformHeight = heights[i]

let nextPlatformHeight = heights[i + 1]

let heightDifference = abs(currentPlatformHeight - nextPlatformHeight)

    if heightDifference == 0 {

energyUse += 1

    } else {

        if heightDifference > maxJump {

            return -1
        } else {

energyUse += heightDifference * 2
}
}
}
return energyUse
}






