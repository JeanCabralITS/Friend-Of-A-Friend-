//
//  Graphable.swift
//  App
//
//  Created by Jean Cabral on 5/1/18.
//

import Foundation

protocol Graphable {
    associatedtype Element: Hashable // 1
    var description: CustomStringConvertible { get } // 2
    
    func createVertex(data: String) -> Vertex // 3
    func add(_ type: EdgeType, from source: Vertex, to destination: Vertex) // 4
    
    func edges(from source: Vertex) -> [Edge<Element>]? // 6
}
