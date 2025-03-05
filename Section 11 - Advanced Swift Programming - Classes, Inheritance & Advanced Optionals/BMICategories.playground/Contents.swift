// Underweight: < 18.5
// Normal: 18.5 - 24.9
// Overweight: > 24.9

import UIKit

let weight = 0
let height = 0
let bmi = Double(weight / (height * height))

if bmi < 18.5 {
    print("Underweight")
} else if bmi < 24.9 {
    print("Normal")
} else {
    print("Overweight")
}
