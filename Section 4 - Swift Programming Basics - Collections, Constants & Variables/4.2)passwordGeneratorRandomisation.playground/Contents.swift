let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    
//The number of letters in alphabet equals 26
//let randomLetters = (0..<5).compactMap { _ in alphabet.randomElement() }
//    print(randomLetters.joined())

let randomLetters = (0...5).compactMap { _ in alphabet.randomElement() }
    print(randomLetters.joined())
