import Foundation
import var CommonCrypto.CC_MD5_DIGEST_LENGTH
import func CommonCrypto.CC_MD5
import typealias CommonCrypto.CC_LONG

public extension String {
    var md5: String {
        let length = Int(CC_MD5_DIGEST_LENGTH)
        let messageData = data(using:.utf8)!
        var digestData = Data(count: length)

        _ = digestData.withUnsafeMutableBytes { digestBytes -> UInt8 in
            messageData.withUnsafeBytes { messageBytes -> UInt8 in
                if let messageBytesBaseAddress = messageBytes.baseAddress, let digestBytesBlindMemory = digestBytes.bindMemory(to: UInt8.self).baseAddress {
                    let messageLength = CC_LONG(messageData.count)
                    CC_MD5(messageBytesBaseAddress, messageLength, digestBytesBlindMemory)
                }
                return 0
            }
        }
        return digestData.map { String(format: "%02hhx", $0) }.joined()
    }
    
    var MD5: String {
        md5.uppercased()
    }
}

public extension Int {
    var md5: String {
        String(self).md5
    }
    
    var MD5: String {
        md5.uppercased()
    }
}

public extension Float {
    var md5: String {
        String(self).md5
    }
    
    var MD5: String {
        md5.uppercased()
    }
}

public extension Double {
    var md5: String {
        String(self).md5
    }
    
    var MD5: String {
        md5.uppercased()
    }
}

public extension Date {
    var md5: String {
        String(timeIntervalSince1970).md5
    }
    
    var MD5: String {
        md5.uppercased()
    }
}
