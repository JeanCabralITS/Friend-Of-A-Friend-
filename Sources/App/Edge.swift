//
//  Edge.swift
//  App
//
//  Created by Jean Cabral on 4/30/18.
//

import Foundation



public enum EdgeType {
    case directed, undirected
}
public struct Edge<T: Hashable> {
    public var source: Vertex // 1
    public var destination: Vertex
}


extension Edge: Hashable {
    
    public var hashValue: Int {
        return "\(source)\(destination)".hashValue
    }
    
    static public func ==(lhs: Edge<T>, rhs: Edge<T>) -> Bool {
        return lhs.source == rhs.source &&
            lhs.destination == rhs.destination 
        
    }
}
