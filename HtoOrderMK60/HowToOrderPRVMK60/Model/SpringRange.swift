//
//  SpringRange.swift
//  HowToOrderPRVMK60
//
//  Created by Carlos Santiago Cruz on 04/04/20.
//  Copyright © 2020 Carlos Santiago Cruz. All rights reserved.
//

import Foundation

enum oneQuarterToThreeQuarterRange: String {
    case sixteen = "2-23 (0,14-1,6)"
    case thirtySeven = "10-38 (0,7-3)"
    case fiftySix = "20-55 (1-4)"
    case eightyOne = "35-160 (2-11)"
    case A6 = "95-220 (7-15)"
    case D8 = "30-85 (2-6)"
    
    var orderIdentifier: String {
        switch self {
        case .sixteen:
            return "16"
        case .thirtySeven:
            return "37"
        case .fiftySix:
            return "56"
        case .eightyOne:
            return "81"
        case .A6:
            return "A6"
        case .D8:
            return "D8"
        }
    }
}

enum oneToTwoRange: String {
    case ceroFive = "1-5 (0,07-0,34)"
    case twenty = "3-8 (0,2-0,6)"
    case twentyEight = "5-20 (0,34-1"
    case thirtyFour = "10-30 (0,7-2"
    case fiftyThree = "20-45 (1-3)"
    case seventyFive = "30-95 (2,7"
    case nineSeven = "60-160 (4-11)"
    
    var orderIdentifier: String {
    switch self {
    case .ceroFive:
        return "05"
    case .twenty:
        return "20"
    case .twentyEight:
        return "28"
    case .thirtyFour:
        return "34"
    case .fiftyThree:
        return "53"
    case .seventyFive:
        return "75"
    case .nineSeven:
        return "97"
    }
  }
}

enum twoAndHalfToFourRange: String {
    case twentyNine = "7-18 (0,5-1)"
    case thirtyTwo = "10-25 (0,7-2)"
    case fourtyTwo = "15-35 (1-2)"
    
    var orderIdentifier: String {
        switch self {
        case .twentyNine:
            return "29"
        case .thirtyTwo:
            return "32"
        case .fourtyTwo:
            return "42"
        }
    }
}
enum MK60Size {
    case oneQuarterToThreeQuarter(range: oneQuarterToThreeQuarterRange)
    case oneToTwo(range: oneToTwoRange)
    case twoAndHalfToFour(range: twoAndHalfToFourRange)
}

enum HalfToTwoRange: String {
    case A1 = "75-190 (5-13)"
    case A7 = "100-320 (7-220)"
    case A9 = "150-450 (10-31"
    var orderIdentifier: String {
    switch self {
    case .A1:
        return "A1"
    case .A7:
        return "A7"
    case .A9:
        return "A9"
    }
  }
}

enum twoAndHalfToFourHPRanage: String {
    case sevenOne = "30-75 (3-5)"
    case nineEight = "65-110 (4-8)"
    
    var orderIdentifier: String {
    switch self {
        case .sevenOne:
        return "71"
        case .nineEight:
        return "98"
        }
    }
}

enum MK60HPSize {
    case HalfToTwo(range: HalfToTwoRange)
    case twoAndHalfToFour(range: twoAndHalfToFourHPRanage)
}

enum MK61Size: String {
    case ceroFive = "1-5 (0,07-0,34)"
    case oneZero = "2-12 (0,14-0,8)"
    case oneSeven = "2-25 (0,14-2)"
    case threeSix = "10-35 (0,7-2)"
    case fiveSix = "20-55 (1-4)"
    case sixThree = "20-80(1-6)"
    case eightSeven = "40-115 (3-8"
    case sevenZero = "25-160 (2-11"
    case eightZero = "30-180 (2-12"
    
    var orderIdentifier: String {
    switch self {
    case .ceroFive:
        return "05"
    case .oneZero:
        return "10"
    case .oneSeven:
        return "17"
    case .threeSix:
        return "36"
    case .fiveSix:
        return "56"
    case .sixThree:
        return "63"
    case .eightSeven:
        return "87"
    case .sevenZero:
        return "70"
    case .eightZero:
        return "80"
        }
    }
}

enum SpringRange {
    case MK60(size: MK60Size)
    case MK60HP(size: MK60HPSize)
    case MK61(size: MK61Size)
}

    
