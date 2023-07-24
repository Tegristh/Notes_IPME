// Exercice 1
const foodOne = ['Noodle', 'Pasta', 'Ice-cream'];
const foodTwo = ['Fries', 'Ice-cream', 'Pizza'];

for (const element of foodOne) {
    if (foodTwo.includes(element)) {
        console.log(element)
    }
}

// Exercice 2

const arr1 = ['a','b','a','c','d','a','a','e','f'];

arr1.filter(x => x === "a").length

// Exercice 3

function dumbMultiplier (a, b) {
    result = 0
    for(let i = 1; i <= a; i++) {
        result += b
    }
    console.log(result)
}

// Exercice 4

const arr2 = [10,12,1,3,523,100,43,23]; // Renverra 523

console.log(Math.max(...arr2))

// Exercice 5

const number = prompt('Choissez un chiffre : ');
for (let i = 1; i <= 10; i++) {
    console.log(`${i} X ${number} = ${i * number}`)
}

// Exercice 6

function palindrome(text) {
    let reversed = text.split('').reverse().join('')
    if (reversed === text) {
        console.log(true)
    } else {
        console.log(false)
    }
}

// Exercice 7

const arr3 = ['a','b','a','b','d','a','a','b','f','a'];

let count = arr3.reduce(function (value, value2) {
    return (
        value[value2] ? ++value[value2] :(value[value2] = 1),
        value
    );
}, {});

console.log(count);

function getMaxValueKey(obj) {
    return Object.keys(obj).reduce((a, b) => obj[a] > obj[b] ? a : b);
}

let maximum = getMaxValueKey(count)

console.log(maximum);