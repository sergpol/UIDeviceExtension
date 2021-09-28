import UIKit

public extension UIDevice {
    enum DeviceTypes {
        case iPhone4_4s
        case iPhone5_SE
        case iPhone6_7_8
        case iPhone6p_7p_8p
        case iPhoneX_Xs_12mini
        case iPhoneXr_XsMax
        case iPhone12_12p
        case iPhone12pMax
        case iPadAir
        case iPad9_7
        case iPad10_5
        case iPad11
        case iPad12_9
        case notIdentified
    }
    
    static var deviceType : DeviceTypes {
        if UIDevice.current.userInterfaceIdiom == .phone {
            switch UIScreen.main.bounds.size.height {
            case 480.0:
                return .iPhone4_4s
            case 568.0:
                return .iPhone5_SE
            case 667.0:
                return .iPhone6_7_8
            case 736.0:
                return .iPhone6p_7p_8p
            case 812.0:
                return .iPhoneX_Xs_12mini
            case 844.0:
                return .iPhone12_12p
            case 896.0:
                return .iPhoneXr_XsMax
            case 926.0:
                return .iPhone12pMax
            default:
                return .notIdentified
            }
        }
        else if UIDevice.current.userInterfaceIdiom == .pad {
            switch UIScreen.main.bounds.size.height {
            case 1024.0:
                return .iPad9_7
            case 1112.0:
                return .iPad10_5
            case 1194.0:
                return .iPad11
            case 1366.0:
                return .iPad12_9
            default:
                return .notIdentified
            }
        }
        else {
            return .notIdentified
        }
    }
}
