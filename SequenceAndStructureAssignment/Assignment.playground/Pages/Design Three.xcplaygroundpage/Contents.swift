/*:
 [Previous](@previous) / [Next](@next)
 
 # Design Three
 
 Here is a starting point for your assignment that you can build upon.
 
 It will produce this output:
 
 ![example_grid](example_grid.png "Grid example")
 
 From this basic form, make the modifications necessary to produce your intended design.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

// Generate a grid
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 1
/*
// This loop makes a 10 rows of columns
for x in stride(from: 25, through: 475, by: 50){
    
    // This loop makes a single column, bottom to top
    for y in stride(from: 25, through: 475, by: 50) {
        
        // Draw the shapes
        canvas.drawEllipse(centreX: x, centreY: y, width: 2, height: 2)
        canvas.drawRectangle(centreX: x, centreY: y, width: 50, height: 50)
    }
}
*/
// Generate a grid
canvas.drawShapesWithFill = false
canvas.defaultLineWidth = 1

// This loop makes a 10 rows of columns

canvas.lineColor = Color.orange
for x in stride(from: 25, through: 475, by: 50){
    
    // This loop makes a single column, bottom to top
    for y in stride(from: 25, through: 475, by: 50) {
        
        // Get some entropy (a random number, 0 or 1, but never 2)
        let value = random(from: 0, toButNotIncluding: 2)
        
        // Use the random value to decide on the direction of a line
        if value == 0 {
            // Draw line that slants up and to the right
            canvas.lineColor = Color.orange
            canvas.drawLine(fromX: x - 25, fromY: y - 67, toX: x + 30, toY: y + 30)
        } else {
            // Draw line that slants up and to the right
            canvas.drawLine(fromX: x + 25, fromY: y - 67, toX: x - 30, toY: y + 30)
            
        }
    }
}

canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = true
canvas.borderColor = Color.purple
canvas.defaultBorderWidth = 10
for x in stride(from: 0, to: 500, by: 50){
    canvas.fillColor = Color(hue: 360, saturation: 100, brightness: 100, alpha: 100)
    var asd = random(from: 0, toButNotIncluding: 500)

    if asd > 250 {
        canvas.drawRectangle(centreX: x + 25, centreY: 475 - x + 25, width: 30, height: 30)
    } else {
        canvas.drawRectangle(centreX: x + 25, centreY: 475 - x-25, width: 30, height: 30)
    }
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
