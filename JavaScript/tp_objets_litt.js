// // Exercice 1

// const carList = []
// let oneMore

// function askAgain(){
//     let again = prompt('Voulez vous continuer? ("O", "N" ) : ')
//     if (again.toUpperCase() === 'N') {
//         return false
//     } else {
//         return true
//     }
// }

// function addCar() {
// 	let newBrand
//     do {
//         newBrand = prompt(' Quelle marque voulez-vous ajouter? : ')
//     } while (newBrand === '')
// 	carList.push(newBrand)
// }


// do {	
// 	addCar();
//     oneMore = askAgain();
// } while (oneMore === true)

// console.log(carList);

// // Exercice 2

// const animalNumber = parseInt(prompt('Combien avez vous de chats ? '))
// const animalList = []

// function addAnimals(number) {
// 	for (let i = 1; i <= number; i++){
//     let newAnimal = prompt(`quel est le nom de l'animal nº ${i}`)
//     animalList.push(newAnimal)
//     }
// }

// addAnimals(animalNumber)
// alert(` vos animaux : ${animalList}`)

// // Exercice 3

// const animalNumber = parseInt(prompt('Combien avez vous de chats ? '))
// const animalList = []

// function addAnimals(number) {
// 	for (let i = 1; i <= number; i++){
//     let newAnimal = prompt(`quel est le nom de l'animal nº ${i}`)
//     animalList.push(newAnimal)
//     }
// }

// addAnimals(animalNumber)
// alert(` vos animaux : ${animalList}`)

// Exercice 4

const listOfAllAnimals = {} 

function addRace() {
		let animalList
    let animalType
    let animalNumber
    
    do {
        animalType= prompt("Quelle race d'animaux possédez vous? (Chien, Chat, Oiseau...) : ")
    } while(animalType === '')
    do {
        animalNumber= parseInt(prompt(`combien d'animaux de type ${animalType} possedez vous? : `))
    } while (isNaN(animalNumber))
    
    if (animalNumber > 1) {
        animalList = []
        for (let i = 1; i <= animalNumber; i++) {
        let newAnimal
        do {
        newAnimal= prompt(`Quel est le nom de l'animal de type ${animalType} n° ${i}? : `)
        } while (newAnimal === '')
        animalList.push(newAnimal)
    } 
    } else {
    		do {
        		animalList = prompt(`Quel est le nom de l'animal de type ${animalType}? : `)
        } while (animalList === '')
    }
    return [animalType, animalList];
}

function modifRace(obj){
		let type = obj[0]
    let names = obj[1]
    if (typeof(names) === 'string') {
    		do {
        names = prompt(`Par quoi voulez vous remplacer ${names} ? : `) 
    } while (names === '')
    }
    else {
        for (let i = 0; i < names.length; i++) {
        		if (confirm(`Voulez vous modifier ${names[i]} ? `)) {
            		do {
                    names[i] = prompt(`Par quoi voulez vous remplacer ${names[i]} ? : `)
                } while (names[i] === '')
            }
        }
    }
    return [type, names]
}

function registerRace() {
    let newRace = addRace()
    if (confirm(`type: ${newRace[0]} : ${newRace[1]} \n Est-ce correct ? `)) {
    		listOfAllAnimals[newRace[0]] = newRace[1]
    } else {
     newRace = modifRace(newRace)
     		listOfAllAnimals[newRace[0]] = newRace[1]
    }
    
}

do {
    registerRace()
} while (confirm("Voulez vous ajouter un autre type d'animal"))


console.log(listOfAllAnimals)