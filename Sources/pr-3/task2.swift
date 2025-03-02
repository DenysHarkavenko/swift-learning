// You have a two-dimensional rectangular box of size X by Y and a bunch of
// boxes, each of size x by y. All dimensions are positive integers.
// positive integers. Given X, Y, x and y, determine how many boxes can be
// can be placed in one box, if they are to be placed so that the x-axis
// of the boxes was aligned with the x-axis of the box, and the y-axis of the boxes was
// aligned with the y-axis of the box. That is, you cannot rotate the boxes.
// The best you can do is to build a rectangle of
// boxes as large as possible in each dimension. For example,
// if the crate has dimensions X = 25 by Y = 18 and the boxes have dimensions x =
// 6 by y = 5, then the answer is 12. You can place 4 boxes along the
// x-axis (since 6*4 <= 25) and 3 boxes along the y-axis (since 5*3 <=
// 18), so you can fit a total of 4*3 = 12 boxes in the
// the rectangle.

import Foundation

func countBoxes(X: Int, Y: Int, x: Int, y: Int) -> Int {
    let countAlongX = X / x
    let countAlongY = Y / y

    return countAlongX * countAlongY
}

let X = 25
let Y = 18
let x = 6
let y = 5

let result = countBoxes(X: X, Y: Y, x: x, y: y)
print("Number of boxes that can be placed: \(result)")

