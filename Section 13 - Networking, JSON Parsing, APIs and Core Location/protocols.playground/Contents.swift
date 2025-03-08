protocol CanFly {
    func fly()
}

class Bird {
    var isFemale = true
    func layEgg() {
        if isFemale {
            print("Laying Egg.")
        }
    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("Eagle fly with wing.")
    }
    
    func soar() {
        print("Glide in the air using air currents.")
    }
}

class Penguin: Bird {
    func swim() {
        print("Swimming.")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
    func fly() {
        print("Fly with Engine.")
    }
}

let myEagle =  Eagle()
let myPenguin = Penguin()
let myPlane =  Airplane()
let museum = FlyingMuseum()

museum.flyingDemo(flyingObject: myPlane)
