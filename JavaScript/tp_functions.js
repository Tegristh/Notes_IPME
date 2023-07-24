// Exercice 1

function compare(str1, str2){
    if (str1 === str2){
        return true
    } else {
        return false
    }
}

text1 = prompt('Entrez une première valeur : ')
text2 = prompt('Entrez une seconde valeur :')

console.log(`${text1} == ${text2} : ${compare(text1, text2)}`)

// Exercice 2

function compare(str1, str2){
    if (str1 === str2){
        return true
    } else {
        return false
    }
}
do {
	text1 = prompt('Entrez une première valeur : ')
} while (text1 === '')

do {
    text2 = prompt('Entrez une seconde valeur :')
} while (text2 === '')


console.log(`${text1} == ${text2} : ${compare(text1, text2)}`)

// Exercice 3

function alertChoice() {
	let number = prompt('Choisissez un chiffre entre 1 et 4 : ')
    switch (number) {
        case '1':
            alert( 1 );
            break;
        case '2':
            alert( 2 );
            break;
        case '3':
            alert( 3 );
            break;
        case '4':
            alert( 4 );
            break;
        default:
            alert(`${number} not between 1 and 4`);
}}

alertChoice()

// Exercice 4

function calculate() {
	let a
    let b
	let operation

	do {
        a = parseInt(prompt('Entrez le premier nombre'))
    } while( isNaN(a) === true);
	
    do {
        b = parseInt(prompt('Entrez le second nombre'))
    } while( isNaN(b) === true);

    do {
        operation = prompt('Choisissez une opération( "+" "-" "*" "/" ) : ')
    } while (operation === '')

    switch (operation) {
    case '+':
        alert(`${a} + ${b} = ${a + b}`);
        break;
    case '-':
        alert(`${a} - ${b} = ${a - b}`);
        break;
    case '*':
        alert(`${a} * ${b} = ${a * b}`);
        break;
    case '/':
        alert(`${a} / ${b} = ${a / b}`);
        break;
    default:
        alert(`Vous devez choisir une opération valide`);
	}
}


calculate();