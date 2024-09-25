import Foundation
import Crypto

public extension Data {
    var md5Data: Data {
        Data(Insecure.MD5.hash(data: self))
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
