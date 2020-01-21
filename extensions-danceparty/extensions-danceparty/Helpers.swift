//
//  Helpers.swift
//  extensions-danceparty
//
//  Created by My Mac on 1/19/20.
//  Copyright © 2020 My Mac. All rights reserved.
//

import UIKit

func generateRandomNumbers(quantity: Int) -> [CGFloat] {
    var randomNumberArray = [CGFloat]()
    for _ in 1...quantity {
        let randomNumber = CGFloat(arc4random_uniform(255))
        randomNumberArray.append(randomNumber)
    }
    return randomNumberArray
}
