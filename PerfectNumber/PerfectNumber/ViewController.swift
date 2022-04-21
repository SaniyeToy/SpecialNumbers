//
//  ViewController.swift
//  PerfectNumber
//
//  Created by MacOS on 21.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var dividers : [Int] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        perfectNumber(x: 6)
    }
    
    func perfectNumber(x: Int) {
        
        let sqr = sqrt(Double(x))
        for i in 2..<Int(sqr)+1 {
            if x % i == 0 {
                print(i)
                dividers.append(i)
                if i != (x/i) {
                    print((x/i))
                    dividers.append(x/i)
                }
            }
        }
        print(dividers)
        
        let sum = dividers.reduce(0, +) + 1
        
        if sum == x {
            print("\(x) is perfect number")
        }
        else {
            print("\(x) isn't perfect number")
        }
    }
}

