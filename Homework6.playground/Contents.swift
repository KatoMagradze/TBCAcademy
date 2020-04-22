/*
 Ekaterine Magradze
 22.04.2020
 */

class Company {
    
    var name: String
    var year: Int
    var headquarters: String
    var founders: [String]
    
    init(name: String, year: Int, headquarters: String, founders: [String]) {
        self.name = name
        self.year = year
        self.headquarters = headquarters
        self.founders = founders
    }
    
    func printName() {
        print("Name: \(self.name)")
    }
    func printYear() {
        print("Founded: \(self.year)")
    }
    func printOffice() {
        print("Headquarters: \(self.headquarters)")
    }
    func printFounders() {
        let founders = self.founders.joined(separator: ", ")
        print("Founders: \(founders)")
    }
    func printAllInfo() {
        printName()
        printYear()
        printOffice()
        printFounders()
    }
    
}

class Apple: Company {
    
    convenience init() {
        self.init(name: "Apple", year: 1976, headquarters: "California", founders: ["Steve Jobs", "Steve Wozniak", "Ronald Wayne"])
    }
    
}

class Google: Company {
    convenience init() {
        self.init(name: "Google", year: 1998, headquarters: "California", founders: ["Larry Page", "Sergey Brin"])
    }
    
}

class Facebook: Company {
    convenience init() {
        self.init(name: "Facebook", year: 2004, headquarters: "California", founders: ["Mark Zuckerberg"])
    }
    
}

//additional
enum whichCompany { //: String {
    case iOS //= "iOS belongs to Apple"
    case Android //= "Android belongs to Google"
    case Instagram //= "Instagram belongs to Facebook"
    
    var instance: Company {
        switch self {
        case .iOS:
            print("ios belongs to apple")
            return Apple(name: "iOS", year: 2007, headquarters: "California", founders: ["Steve Jobs", "Steve Wozniak", "Ronald Wayne"])
        case .Android:
            print("android belongs to Google")
            return Google(name: "Android", year: 2008, headquarters: "California", founders: ["Andy Rubin", "Nick Sears", "Rich Miner"])
        case .Instagram:
            print("instagram belongs to Facebook")
            return Facebook(name: "Instagram", year: 2010, headquarters: "California", founders: ["Kevin Systrom"])
        }
    }
}

var apple = Apple()
apple.printAllInfo()

print("")
var google = Google()
google.printAllInfo()

print("")
var facebook = Facebook()
facebook.printAllInfo()

print("")
var iOS = whichCompany.iOS.instance
iOS.printYear()  //prints the year of ios's release

