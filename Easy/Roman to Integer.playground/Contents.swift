import Foundation

//I can be placed before V (5) and X (10) to make 4 and 9.
//X can be placed before L (50) and C (100) to make 40 and 90.
//C can be placed before D (500) and M (1000) to make 400 and 900.

class Solution {
    enum Roman: String {
        case I
        case V
        case X
        case L
        case C
        case D
        case M
        
        var toNumber: Int {
            switch self {
            case .I:
                return 1
            case .V:
                return 5
            case .X:
                return 10
            case .L:
                return 50
            case .C:
                return 100
            case .D:
                return 500
            case .M:
                return 1000
            }
        }
    }
    
    func romanToInt(_ s: String) -> Int {
        guard s.count >= 1, s.count <= 15 else { return  0 }
        
        var result = 0
        var dictionary: [Int : Character] = [:]
        
        s.enumerated().forEach {
           
            dictionary[$0.offset] = $0.element
            
            if ($0.element == "V" || $0.element == "X") && dictionary[$0.offset - 1] == "I" {
                result += Roman(rawValue: String($0.element))!.toNumber - 1
                result -= 1
            } else if ($0.element == "L" || $0.element == "C") && dictionary[$0.offset - 1] == "X" {
                result += Roman(rawValue: String($0.element))!.toNumber - 10
                result -= 10
            } else if ($0.element == "D" || $0.element == "M") && dictionary[$0.offset - 1] == "C" {
                result += Roman(rawValue: String($0.element))!.toNumber - 100
                result -= 100
            } else {
                result += Roman(rawValue: String($0.element))!.toNumber
            }
        }
        
        return result
    }
}
