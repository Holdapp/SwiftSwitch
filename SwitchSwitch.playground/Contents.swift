//: Playground - noun: a place where people can play

import Foundation

/* 
 Chcialbym Cię zaprzyjaźnić z instrukcją switch w swifcie. Osiągnę te cel gownie poprzez pokazanie kodu i chcialbym się oprzeć na metodzie gumowej kaczki.
 
    Myślę, że masz już pojęcie jak działa instrukcja switch, tutaj jedynie pokrywam co nowego w swifcie w porówaniu do objective-C.
 */

/*
    Tutaj pokaże kawałek kodu z który opiszę w kolejnym paragrafie.

    1 / Tutaj tworzę stałą string którą będziemy sprawdzać w switch'y

    2 / Zmienna string którą będziemy zmienniać w switch'u

    3 / Wartość strigu się zgadza ale dodałem "where" którę również sprawdza wartość podaną dalej
 
    4 / Można wymienić po przecinku parę wartośći i jeśli która kolwiek się zgadza switch wejedzie w dany case
 
    5 / Zła wartość podana więc case również zostanie pominięty
 
    6 / Zamiast podania wartośći można dać kreskę dolną która oznacza, że nie zależnie od tej wartości powinien wejść w dany case
 
    7 / Deafult tutaj wejdzie jeśli wszytskie inne wartości się nie zgadzają
 */

let string = "Hello, playground" //1
let value = false
var endString: String //2

switch string {
case "Hello, playground" where value: //3
    endString = "case one with value"
case "a", "b", "c": //4
    endString = "case with 3 values"
case "Goodbye playgrand": //5
    endString = "Goodbye"
case _ where !value: //6
    endString = "Yo!"
default: //7
    endString = "default"
}

/* Optionale */
 

let text = "Text" as AnyObject? //1

switch text {
case let text? where text is Int: //2
    print(text as! Int)
case let text? where text is String: //3
    print(text as! String)
default: ()
}

/*
    1 / Kolejna zmienna z wartością string ale zadeklarowaną jako opcjonalny obiekt Any
 
    2 / Sprawdzanie czy text jest nilem i dalej za "where" sprawdzenie czy dany obiekt jest Intem (pominięte)
 
    3 / Sprawdzanie czy text jest nilem i dalej za "where" sprawdzenie czy dany obiekt jest Stringiem
 
 */

/* Inty */

let a = 1
let b = 2
var c = 0

switch (a, b) { //1
case (1, 2), (2, 3): //2
    c = 12
    fallthrough //3
case (2,_): //4
    c += 1
case (let aValue, 2): //5
    print("a = \(aValue)")
case (let eitherValue, 2), (2, let eitherValue): //6
    print("either value: \(eitherValue)")
case (0...3, 0...100): //7
    c += 5
    fallthrough
default:
    c = 17
}

/* Enums */

enum Cases { //1
    case noParameters
    case oneParameter(text: String)
    case anotherOneParameter(firstText: String)
    case twoParameters(text: String, number: Int)
}

let thisCase: Cases = .twoParameters(text: "Text", number: 10) //2

switch thisCase {
case .oneParameter(_): //4
    break
case .anotherOneParameter(let text): //5
    print("Text: \(text)")
case let .twoParameters(text, number): //6
    print("Text: \(text)")
    print("Number: \(number)")
default: ()
}

/*  1 / Deklaracja enumu z 3 wartościami, pierwsze bez parametrów, durga i trzecia z jednym parametrem i czwartej z dwoma parametrami
 
    2 / Stworzenie stałej z dwoma paramterami
 
    3 / Sprawdznie czy stała jest równa .noParameters
 
    4 / Sprawdznie czy stała jest równa .oneParameter i pominięcie wartości
 
    5 / Sprawdznie czy stała jest równa .anotherOneParameter dającą możliwość dostępnu do parametrów
 
    6 / To samo co w punkcie 5 tylko let teraz przed nazwą dzięki czemu nie trzeba pisać przez każdym parameterem
 
 */
