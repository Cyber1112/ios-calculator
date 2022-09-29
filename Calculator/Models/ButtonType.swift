//
//  ButtonType.swift
//  Calculator
//
//  Created by Khakim Zhumagaliyev on 28.09.2022.
//

import Foundation
import SwiftUI

enum ButtonType: Hashable{
    case digit(_ digit: Digit)
    case operation(_ operation: ArithmeticOperation)
    case negative
    case percent
    case decimal
    case equals
    case allClear
}

