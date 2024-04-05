import Foundation

struct Location {
    
    var x: Double
    var y: Double
}

struct Customer {
    
    var name: String
    var email: String
    var phoneNumber: String
    var acceceptedNewsLetter: Bool
    var location: Location
}

let storeRange = 2.5

let McDonalds = Location(x: 2, y: 3)
let Popeyes = Location(x: 7, y: 3)

let customers: [Customer] = [
    
    Customer(name: "Ryan M", email: "ryancodes00@gmail.com", phoneNumber: "905-000-0101", acceceptedNewsLetter: true, location: Location(x: 2, y: 2)),
    Customer(name: "Andrea R", email: "andrear@gmail.com", phoneNumber: "416-000-0000", acceceptedNewsLetter: true, location: Location(x: 7, y: 1)),
    Customer(name: "Mikey L", email: "mikel@gmail.com", phoneNumber: "416-111-1111", acceceptedNewsLetter: false, location: Location(x: 1, y: 9)),
    Customer(name: "Dane L", email: "danel@gmail.com", phoneNumber: "905-111-1111", acceceptedNewsLetter: false, location: Location(x: 1, y: 1)),
    Customer(name: "Claudia R", email: "claudiar@gmail.com", phoneNumber: "905-222-0000", acceceptedNewsLetter: false, location: Location(x: 8, y: 2)),
    Customer(name: "Nat R", email: "natr@gmail.com", phoneNumber: "416-222-0000", acceceptedNewsLetter: false, location: Location(x: 3, y: 3)),
    Customer(name: "Matt P", email: "mattp@gmail.com", phoneNumber: "416-222-1111", acceceptedNewsLetter: true, location: Location(x: 4, y: 2)),
    Customer(name: "Jay J", email: "jayj@gmail.com", phoneNumber: "416-222-2222", acceceptedNewsLetter: true, location: Location(x: 0, y: 9)),
    Customer(name: "Caleb A", email: "caleba@gmail.com", phoneNumber: "905-333-3333", acceceptedNewsLetter: false, location: Location(x: 9, y: 6)),
    Customer(name: "Luci A", email: "lucia@gmail.com", phoneNumber: "416-363-6300", acceceptedNewsLetter: true, location: Location(x: 6, y: 3))
]

func calculateDistance(from location1: Location, to location2: Location) -> Double {
    
    let distance1 = location1.x - location2.x
    let distance2 = location2.y - location2.y
    
    return sqrt(distance1 * distance1 + distance2 * distance2)
}

func customersWithinRange(storeLocation: Location, customer: [Customer]) {
    
    for customer in customers {
    
        let distance = calculateDistance(from: customer.location, to: storeLocation)
        if distance <= storeRange {
        
            print("Name: \(customer.name) Email: \(customer.email)")
        }
    }
}
 print("Customers within range of Mcdonalds!")
customersWithinRange(storeLocation: McDonalds, customer: customers)

print("Customers within range of Popeyes!")
customersWithinRange(storeLocation: Popeyes, customer: customers)

