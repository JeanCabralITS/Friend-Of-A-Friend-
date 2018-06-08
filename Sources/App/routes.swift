import Routing
import Vapor



//First get input which is a Graph of people where the edges represent friendship relationships
// The input is an array of friend relationships
// Output is return a set of arrays representing a new suggested friend relationship

struct Friends: Content {
    let inList: [InList]
}

struct InList: Content,Hashable {
    let friends: [String]
    
    var hashValue: Int{
        return friends.reduce(0) {
        let count = $0 + $1.count
        return count
        }
    }
}

struct Output: Content {
    let outList: [[String]]
}

public func routes(_ router: Router) throws {
    router.post("foaf") { req -> InList in
        
        // The MOST IMPORTANT LINE req.content  the syncDecode allows you to get the actual object you want instead of a Future<> wrapped object.
        let data = try req.content.syncDecode(Friends.self)
        
        var namePairs = [[String]]()
        // Place names from the Inlist object into an array of strings ["Jeff", "George"]
        for people in data.inList.indices{
            namePairs.append(data.inList[people].friends)
        }
        
        print(namePairs)
        
        let list = AdjacencyList<InList>()
        //let vArray = [Vertex<InList>]()
        
        // Get all the unique names and make them into Vertex's.
        for n in namePairs.indices{
            list.add(.undirected, from: Vertex(data: namePairs[n].removeFirst()), to: list.createVertex(data: namePairs[n].popLast()!))
        }
        
        // Create the Vertex List.
        
        var tempDict = [Int : [String] ]()
        for names in data.inList.indices{
            tempDict[names] = namePairs[names]
        }
        
        for values in tempDict.values{
            
            
        }
        
        
        
            
        
        
        
        print(list.description)
       
        
        
        return data.inList[0]
        
    }
}


