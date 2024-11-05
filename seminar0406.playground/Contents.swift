//import Foundation
//
//let name = "Jay"
//let age = 23
//let greeting = "Hello, \(name), who is \(age) years old"
//print(greeting)
//
//let ages: [Int] = [1, 19, 32, 101]
//let names: [String] = ["foo", "bar", "baz"]
//
//let namesToAges: [String: Int] = ["foo": 1, "bar": 19, "baz": 32, "qux": 101]
//print(type(of: ages))
//print(type(of: names))
//print(type(of: namesToAges))
//
//let setOfNames: Set<String> = ["foo", "bar", "baz", "foo"]
//print(setOfNames)
//
//for age in ages {
//    if age > 100 {
//        print(age)
//    }
//}

//for name in names {
//    print(name, terminator: ",")
//}

// NULL
//print()
// source of truth: 2
//var instructor: Optional<String> = nil // .none
//var instructor: String? = nil // .none
// istructor의 값을 입력받기!!
//instructor = .some("이광근")
//instructor = "이광근"
// ...
//if instructor == .none {
//    print("No instructor : \(instructor!)") // force unwrapping
//} else {
//    print("Instructor is \(instructor!)")
//}

//
//if let instructor {
//    print("Instructor is \(instructor)")
//} else {
//    print("No instructor")
//}

//if let instructor {
//    print("Instructor is \(instructor)")
//} else {
//    print("Instructor is unknown")
//}

//print("Instructor is \(instructor ?? "unknown")")


func printInstructor(_ instructor: String?) {
    print("Instructor is \(instructor ?? "unknown")")
}


func printInstructorasdads(asdas instructor: String?) {
    print("Instructor is \(instructor ?? "unknown")")
}


printInstructor("이광근")


var printDODO = { (instructor: String?) in
    print("Instructor is \(instructor ?? "unknown")")
}

var pintada : (String?) -> () = { instructor in
    print("Dads")
}

let printInstructor2 = printInstructor
printInstructor2(":ada")

let printInstructor3 = printInstructorasdads
printInstructor3("adsfad")


