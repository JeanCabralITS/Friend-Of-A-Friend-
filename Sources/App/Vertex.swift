import Foundation

public struct Vertex {
    
    public var data: String
   
    
}

extension Vertex: CustomStringConvertible {
    
    public var description: String {
        return " \(data)"
    }
    
}

extension Vertex: Hashable {
    
    public var hashValue: Int {
        return "\(data)".hashValue
    }
    
}

public func ==(lhs: Vertex, rhs: Vertex) -> Bool {
 
    
    guard lhs.data == rhs.data else {
        return false
    }
    
    return true
}


