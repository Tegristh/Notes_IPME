const tbody = document.querySelector('tbody')
const previousPageBtn = document.querySelector("#previousPage")
const currentPageSpan = document.querySelector("#currentPage")
const nextPageBtn = document.querySelector("#nextPage")

let page = 1
let pageSize = 20
let maxPage

previousPageBtn.addEventListener("click", (e) =>{
    e.preventDefault()
    if ( page > 1 ) {
        page--
        getData()
        if(nextPageBtn.classList.contains('disabled')) {
            nextPageBtn.classList.remove('disabled')
        }
        }
        if(page === 1 && !previousPageBtn.classList.contains('disabled')) {
            previousPageBtn.classList.add('disabled')
    }

    
})

nextPageBtn.addEventListener("click", (e) =>{
    e.preventDefault()
    if (maxPage && page < maxPage) {
        page++
        getData()
    console.log(previousPageBtn.classList.contains('disabled'))
    if(page > 1 && previousPageBtn.classList.contains('disabled')){
        previousPageBtn.classList.remove("disabled")
    }
    if(page === maxPage && !nextPageBtn.classList.contains("disabled")){
        nextPageBtn.classList.add("disabled")
    }
}})

function getData() {
    fetch(`https://api.disneyapi.dev/character/?page=${page}&pageSize=${pageSize}`)
	.then(res => res.json())
	.then(res => {
        if (maxPage !== res.info.totalPages) {
            maxPage = res.info.totalPages
        }
        clearTBody()
        currentPageSpan.innerText = page
        res.data.forEach(generateRow)
    })
	.catch(e => console.log(e));
}

function clearTBody() {
    while (tbody.firstChild){
        tbody.removeChild(tbody.lastChild)
    }
}

function generateRow(character) {
    const newRow = document.createElement("tr")
    const newId = document.createElement("td")
        newId.innerText = character._id
    const newName = document.createElement("td")
        newName.innerText = character.name
    const newCreation = document.createElement("td")
        newCreation.innerText = character.createdAt
    const newUpdate = document.createElement('td')
        newUpdate.innerHTML = character.updatedAt
    
    newRow.append(newId, newName, newCreation, newUpdate)
    tbody.appendChild(newRow)
}

getData()