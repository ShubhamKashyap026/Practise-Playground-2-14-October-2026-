import Cocoa

var greeting = "Hello, playground"


class Game {
    var score = 0 {
        didSet {
            print("Score is: \(score)")
        }
    }
}

let game = Game()
game.score += 5


// Examplees of Classes

class Painting {
    var title: String
    var artist: String
    var paintType: String
    init(title: String, artist: String, paintType: String) {
        self.title = title
        self.artist = artist
        self.paintType = paintType
    }
}




class BoardGame {
    var name: String
    var minimumPlayers = 1
    var maximumPlayers = 4
    init(name: String) {
        self.name = name
    }
}





class TIE {
    var name: String
    var speed: Int
    init(name: String, speed: Int) {
        self.name = name
        self.speed = speed
    }
}
let fighter = TIE(name: "TIE Fighter", speed: 50)
let interceptor = TIE(name: "TIE Interceptor", speed: 70)






class VideoGame {
    var hero: String
    var enemy: String
    init(heroName: String, enemyName: String) {
        self.hero = heroName
        self.enemy = enemyName
    }
}
let monkeyIsland = VideoGame(heroName: "Guybrush Threepwood", enemyName: "LeChuck")





class Image {
    var filename: String
    var isAnimated: Bool
    init(filename: String, isAnimated: Bool) {
        self.filename = filename
        self.isAnimated = isAnimated
    }
}



// Inheritance
class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) a day")
    }
}

class Developer: Employee {
    func work() {
        print("Writing code for: \(hours) hours")
    }
}



class Manager: Employee {
    func work() {
        print("Having meetings for: \(hours) hours")
    }
}


let robert = Developer(hours: 8)
let joseph = Manager(hours: 12)

robert.work()
joseph.work()

robert.printSummary()
joseph.printSummary()

let novela = Developer(hours: 12)
novela.printSummary()


// override allows to edit methods of parents class in child class
