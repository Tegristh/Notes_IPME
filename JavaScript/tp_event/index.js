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

let result = '0'
let pending = '0'
let nextOperation = ''
let lastOperation = ''

const pendingShow = document.querySelector("#pending")
// console.log(pendingShow.innerText)
const resultShow = document.querySelector("#resultat")
// console.log(pendingShow.innerText)
const operationShow = document.querySelector("#operation")
// console.log(pendingShow.innerText)

function refreshNumberScreen(direction, value){
        direction.innerText = parseFloat(value)
}
function refreshScreen(direction, value){
    direction.innerText = value
}

const numbers = document.querySelectorAll('.key[data-type="number"]')
numbers.forEach(element => {
    element.addEventListener("click", ()=>{
        // console.log(element)
        pending += element.innerText
        // console.log(pending)
        refreshNumberScreen(pendingShow, pending)
    })
    element.style.color="yellow"
});

const operations = document.querySelectorAll('.key[data-type="operation"')
operations.forEach( element => {
    element.addEventListener("click", ()=>{
        let operationOut = ''
        switch (element.innerText) {
            case "/":
                operationOut = 'divide'
                break;
            case "*":
                operationOut = 'multiply'
                break;
            case "-":
                operationOut = 'substract'
                break;
            case "+":
                operationOut = 'add'
                break;
            case "enter":
                operationOut = 'calc'
                break;
            case ",":
                operationOut = 'coma'
            default:
                break;
        }
    // console.log(operationOut)
    calculate(operationOut)
    })
    element.style.color = "orange"
})

function refreshScreens(){
    refreshNumberScreen(resultShow, result)
    refreshNumberScreen(pendingShow, pending)
    refreshScreen(operationShow, nextOperation)
}

function add(a, b){
    return a + b
}

function substract(a, b){
    return a - b
}

function multiply(a, b){
    return a * b
}

function divide(a, b){
    return a / b
}

function calculate(str){
    
    
    if (str === "coma") {
        // gestion de la virgule
        pending += "."
    }
    
    else if ((nextOperation === "") && (str !== "coma")) {
        // gestion premier nombre
        result = parseFloat(pending)
        pending = "0"
        nextOperation = str
        refreshScreens()
    } else {
        // effectuer le calcul
        lastOperation = nextOperation
        if (nextOperation === "calc"){
            nextOperation = ""
        }
        pending = parseFloat(pending)
        
        result = eval(`${nextOperation}(result, pending)`)
        console.log(result)
        pending = "0"
        nextOperation = str
        console.log(result, pending, nextOperation, lastOperation)
        refreshScreens()
    }
}

// Exercice 5


const inputs = document.querySelectorAll("#dyn-form input")
const btn = document.querySelector("#dyn-button")
let show = 0

function btnShow(){
    if (show == 5){
        btn.classList.remove("hidden")
    } else {
        btn.classList.add("hidden")
    }
}

inputs.forEach(element => {
    
    element.addEventListener("keydown", ()=>{
        show = 0
        inputs.forEach(element => {
            if (element.value.length > 0){
                show += 1
            } 
        }
    )
    console.log(show)
    btnShow()

    }
    )})