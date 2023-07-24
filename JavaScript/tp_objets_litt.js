// Exercice 1

const carList = []
let oneMore

function askAgain(){
    let again = prompt('Voulez vous continuer? ("O", "N" ) : ')
    if (again.toUpperCase() === 'N') {
        return false
    } else {
        return true
    }
}

function addCar() {
	let newBrand
    do {
        newBrand = prompt(' Quelle marque voulez-vous ajouter? : ')
    } while (newBrand === '')
	carList.push(newBrand)
}


do {	
	addCar();
    oneMore = askAgain();
} while (oneMore === true)

console.log(carList);

// Exercice 2

const animalNumber = parseInt(prompt('Combien avez vous de chats ? '))
const animalList = []

function addAnimals(number) {
	for (let i = 1; i <= number; i++){
    let newAnimal = prompt(`quel est le nom de l'animal nº ${i}`)
    animalList.push(newAnimal)
    }
}

addAnimals(animalNumber)
alert(` vos animaux : ${animalList}`)

// Exercice 3

