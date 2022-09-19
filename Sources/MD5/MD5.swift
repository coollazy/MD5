import Foundation
import var CommonCrypto.CC_MD5_DIGEST_LENGTH
import func CommonCrypto.CC_MD5
import typealias CommonCrypto.CC_LONG

public extension Data {
    var md5Data: Data {
        let length = Int(CC_MD5_DIGEST_LENGTH)
        var digestData = Data(count: length)

        _ = digestData.withUnsafeMutableBytes { digestBytes -> UInt8 in
            self.withUnsafeBytes { messageBytes -> UInt8 in
                if let messageBytesBaseAddress = messageBytes.baseAddress, let digestBytesBlindMemory = digestBytes.bindMemory(to: UInt8.self).baseAddress {
                    let messageLength = CC_LONG(self.count)
                    CC_MD5(messageBytesBaseAddress, messageLength, digestBytesBlindMemory)
                }
                return 0
            }
        }
        return digestData
    }
    
    var md5: String {
        md5Data.map { String(format: "%02hhx", $0) }.joined()
    }
    
    var MD5: String {
        md5.uppercased()
    }
}

public extension String {
    var md5Data: Data {
        data(using:.utf8)!.md5Data
    }
    
    var md5: String {
        data(using:.utf8)!.md5
    }
    
    var MD5: String {
        md5.uppercased()
    }
}

public extension Int {
    var md5Data: Data {
        String(self).data(using:.utf8)!.md5Data
    }
    
    var md5: String {
        String(self).md5
    }
    
    var MD5: String {
        md5.uppercased()
    }
}

public extension Float {
    var md5Data: Data {
        String(self).data(using:.utf8)!.md5Data
    }
    
    var md5: String {
        String(self).md5
    }
    
    var MD5: String {
        md5.uppercased()
    }
}

public extension Double {
    var md5Data: Data {
        String(self).data(using:.utf8)!.md5Data
    }
    
    var md5: String {
        String(self).md5
    }
    
    var MD5: String {
        md5.uppercased()
    }
}

public extension Date {
    var md5Data: Data {
        String(timeIntervalSince1970).data(using:.utf8)!.md5Data
    }
    
    var md5: String {
        String(timeIntervalSince1970).md5
    }
    
    var MD5: String {
        md5.uppercased()
    }
}
