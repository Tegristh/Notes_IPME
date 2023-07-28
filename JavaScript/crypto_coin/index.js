const tbody = document.querySelector('tbody')
const previousPageBtn = document.querySelector("#previousPage")
const currentPageSpan = document.querySelector("#currentPage")
const nextPageBtn = document.querySelector("#nextPage")

let page = 1
let pageSize = 20
let maxPage

// previousPageBtn.addEventListener("click", (e) =>{
//     e.preventDefault()
//     if ( page > 1 ) {
//         page--
//         getData()
//         if(nextPageBtn.classList.contains('disabled')) {
//             nextPageBtn.classList.remove('disabled')
//         }
//         }
//         if(page === 1 && !previousPageBtn.classList.contains('disabled')) {
//             previousPageBtn.classList.add('disabled')
//     }

    
// })

// nextPageBtn.addEventListener("click", (e) =>{
//     e.preventDefault()
//     if (maxPage && page < maxPage) {
//         page++
//         getData()
//     console.log(previousPageBtn.classList.contains('disabled'))
//     if(page > 1 && previousPageBtn.classList.contains('disabled')){
//         previousPageBtn.classList.remove("disabled")
//     }
//     if(page === maxPage && !nextPageBtn.classList.contains("disabled")){
//         nextPageBtn.classList.add("disabled")
//     }
// }})

function getData() {
    fetch(`https://api.coingecko.com/api/v3/coins/list`)
	.then(res => res.json())
	.then(res => {
        
        if (maxPage !== Math.ceil(res.length/pageSize)) {
            maxPage = Math.ceil(res.length /pageSize)
        }
        // clearTBody()
        // currentPageSpan.innerText = page
        console.log(maxPage, res)
        res.forEach(generateRow)
    })
	.catch(e => console.log(e));
}

function clearTBody() {
    while (tbody.firstChild){
        tbody.removeChild(tbody.lastChild)
    }
}

function generateRow(coin) {
    const newRow = document.createElement("tr")
    const newId = document.createElement("td")
        newId.innerText = coin._id
    const newName = document.createElement("td")
        newName.innerText = coin.name
    const newSymbol = document.createElement("td")
        newSymbol.innerText = coin.symbol

    
    newRow.append(newId, newName, newSymbol)
    tbody.appendChild(newRow)
}

getData()