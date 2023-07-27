// Exercice 1

toClick = document.getElementsByClassName("click-me")[0]
toClick.addEventListener("click", clicked)

function clicked(){
    alert("Vous avez cliqué!")
}

// Exercice 2

const ex2input = document.querySelector("#ex2")
ex2input.style.backgroundColor = "red"

const output = document.querySelector('#ex2result')
let data = ''

const reset = document.querySelector('#reset')

const backspace = document.querySelector('#backspace')

ex2input.addEventListener( "keydown", (event)=>{
    console.log(event.key)
    data += (event.key)
    console.log(data)
    output.innerText = data
})

reset.addEventListener("click", () =>{
    alert("reset")
    data = ''
    output.innerText = data
})

backspace.addEventListener("click", ()=>{
    data = data.slice(0, -1)
    output.innerText = data

})
//
const compteur = document.querySelector("#compteur")
const plusbtn = document.querySelector("#plus")
const moinsbtn = document.querySelector("#moins")
let total = 0
plusbtn.addEventListener("click", () =>{
    total +=1
    compteur.innerText = total
})
moinsbtn.addEventListener("click", () =>{
    total -=1
    compteur.innerText = total
})

//Exercice 4

let result = ''
let pending = ''
let nextOperation = ''
let lastOperation = ''

numbers = document.querySelectorAll('.key[data-type="number"]')
numbers.forEach(element => {
    element.style.color="red"
    
});


// Exercice 5

const lastName = document.querySelector("#lastName")

lastName.addEventListener("keydown", function (event){
    // console.log(event.key)
})
console.log(lastName.value)