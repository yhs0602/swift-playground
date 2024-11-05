import Foundation

let session = URLSession(configuration: .default)
let catFactURL = URL(string: "https://catfact.ninja/fact")!
let dogURL = URL(string: "https://dog.ceo/api/breeds/image/random")!
let request = URLRequest(url: catFactURL)

struct CatFact: Codable {
    let fact: String
//    let length: Int
}

let decoder = JSONDecoder()

Task { @MainActor in
    do {
        let (data, response) = try await session.data(for: request)
        print(data)
        print(String(data: data, encoding: .utf8)!)
        let fact = try decoder.decode(CatFact.self, from: data)
        print(fact.fact)
//        print(fact.length)
        print(fact)
    } catch {
        print(error)
    }
}

struct Foo {
    var bar: Int
    init?(bar: Int) {
        guard bar > 0 else { return nil }
        self.bar = bar
    }
}

let foo = Foo(bar: 3)
let foo2 = Foo(bar: -1)

print(foo)
print(foo2)


let cancellable = session.dataTaskPublisher(for: catFactURL)
    .tryMap { data, _ in
        try decoder.decode(CatFact.self, from: data)
    }
    .replaceError(with: CatFact(fact: "I dunno"))
    .sink
//  { completion in
// Error is Never, so completion
//if case let .failure(error) = completion {
//    print(error)
//}
//} receiveValue:
{ fact in
    //    print(String(data: data, encoding: .utf8)!)
    //    print(try decoder.decode(CatFact.self, from: data))
        print(fact)
    }

session.dataTask(with: request) { data, response, error in
    guard let data else {
        print(error!)
        return
    }
    print(String(data: data, encoding: .utf8)!)
}
    .resume()

