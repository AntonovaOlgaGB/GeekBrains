import Foundation

//MARK:- first task
let a = 3.0
let b = 2.0
let c = -16.0

let D = pow(b, 2) - 4*a*c
let x1 = (-b + sqrt(D))/2*a
let x2 = (-b - sqrt(D))/2*a

//MARK:- second task
let leg1 = 5
let leg2 = 9

let S = a * b/2

let hypo = sqrt(pow(a, 2) + pow(b, 2))

let P = a + b + hypo

//MARK:- third task
let amount:Double = 100000
let percent:Double = 8
let duration:Double = 5

let profit = amount * pow((1 + percent/100), duration)
