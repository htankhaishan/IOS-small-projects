import Foundation

class Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Human: Animal {
    func code() {
        print("\(name) is coding.")
    }
}

class Fish: Animal {
    func breathUnderWater() {
        print("Breating under water.")
    }
}

let angela = Human(name: "Angela")
let jack = Human(name: "Jack")
let nemo = Fish(name: "Nemo")

let neighbours = [angela, jack, nemo]

if neighbours[0] is Human { // Upcasting & Protocol Casting
    print("Frist neightbour is human")
}

func findNemo (from animals: [Animal]) {
    for animal in animals {
        if animal is Fish { // Upcasting & Protocol Casting
            print(animal.name)
            let fish = animal as! Fish // Forced Downcasting
            fish.breathUnderWater()
        }
    }
}

findNemo(from: neighbours)


//let fish = neighbours[1] as! Fish // runtime error

let fish = neighbours[1] as? Fish
fish?.breathUnderWater()

// or

if let fish1 = neighbours[1] as? Fish {
    fish?.breathUnderWater()
} else {
    print("Casting has failed.")
}
