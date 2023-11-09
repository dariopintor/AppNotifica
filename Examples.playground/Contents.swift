import UIKit

typealias Age = Int

struct Address: Codable {
    var streetName: String
    var number: Age
}

struct Person: Codable {
    var name: String
    var age: Age
    var isSingle: Bool
    var height: CGFloat
    var address: Address
}

let person1 = Person(name: "João das Couves", age: 22, isSingle: false, height: 1.85, address: .init(streetName: "Rua X", number: 10))
let person2 = Person(name: "Maria das Neves", age: 35, isSingle: true, height: 1.59, address: .init(streetName: "Rua Y", number: 12))
let allPeople: [Person] = [person1, person2]
//JSONEncoder - Pega um tipo Swift (struct/class) e transforma num JSON (representacao textual)
let jsonEncoder = JSONEncoder()
do {
    let data = try jsonEncoder.encode(allPeople)
    let response = String(data: data, encoding: .utf8)!
    if let responseData = response.data(using: .utf8) {
        //JSONDecoder - Pega um JSON e transforma num tipo "Swift" (struct/class)
        let object = try JSONDecoder().decode([Person].self, from: responseData)
        print(object)
    }
} catch {
    print(error)
}



