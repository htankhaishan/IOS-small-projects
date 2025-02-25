//// Struct = Blueprint
//// Defining the Structure
//struct Town {
//    // "Properties" or attribute of the structure, "What it's like"
//    let name = "Tomland"
//    var citizens = ["Tom","Ben","Ali"]
//    var resources = ["Grain": 100, "Ore": 42, "Wool": 75]
//    
//    // A func that associated with a structure is called "Method", "What the object can do"
//    func fortify(){
//        print("Defences increased!")
//    }
//}
//
//// Initialising the Structure or creating Object call myTown, Retrieving Data or Retrieving the values or properties
//var myTown = Town()
//
//print(myTown)
//print("\(myTown.name) has \(myTown.resources["Grain"]!) bags of grain.")
//
//// Append or modify
//myTown.citizens.append("Jassar")
//print(myTown.citizens.count)
//
//// Define a behavior of our structur
//myTown.fortify()
//
//
//// Creating the initialiser, "init() {}"
//
//// Using the initialiser, "StructureName()"


struct Town {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    // create initializer.
    // init(parameters) {
    //      statements
    // }
    init(name: String, citizens: [String], resources: [String : Int]) {
        // self keywords refers to eventual object that will created from this structure blueprint
        // After initialized "self.name" going to refer to the object that's initialized
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    func fortify(){
        print("Defences increased!")
    }
}

// Creating our town with an initializer
var anotherTown = Town(name: "Nameless Island", citizens: ["Tom Hanks"], resources: ["Coconuts" : 100])
// Tap into my object call anotherTown
anotherTown.citizens.append("Wilson")
print(anotherTown.citizens)

var ghostTown = Town(name: "Ghosty McChostface", citizens: [], resources: ["Tumbleweed" : 1])
ghostTown.fortify()
