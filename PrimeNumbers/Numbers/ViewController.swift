//
//  ViewController.swift
//  Numbers
//
//  Created by MacOS on 21.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var prime: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prime(35)
        isPrime(35)
    }
    
    func prime(_ x: Int){
        
        for i in 3...x{
            
            for a in 2...i-1 where i % 2 == 1{
                if i % a == 0{
                 //   print("asal değil")
                    if prime.contains(i){
                        prime.removeLast()
                    }
                    break
                } else{
                    if prime.contains(i){
                        
                    }else{
                        prime.append(i)
                    }
                }
            }
        }
       // print(prime)
    }
    
    
    func isPrime(_ x: Int){
        for b in 2...x where x % 2 == 1{
            if x % b == 0{
                print("\(x) isn't prime number")
                break
            } else{
                print("\(x) is prime number")
            }
        }
    }
}
