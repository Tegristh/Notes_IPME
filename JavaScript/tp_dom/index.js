// Exercice 1

let body = document.body

const a1 = document.createElement("a");
    a1.innerText = "Organisme de standardisation";
    a1.href = "http://fr.wikipedia.org/wiki/organisme_de_normalisation";
    a1.title = "Organisme de normalisation";

const a2 = document.createElement("a");
    a2.innerText = "World Wide Web";
    a2.href = "http://fr.wikipedia.org/wiki/world_wide_web";
    a2.title = "World Wide Web";

const strong1 = document.createElement("strong");
    strong1.innerText = "World Wide Web Consortium";

const strong2 = document.createElement("strong");
    strong2.innerText = "W3C";

const main = document.createElement("div");
    main.id = "container_ex1";

main.append(document.createTextNode("Le "));
main.appendChild(strong1);
main.append(document.createTextNode(", abrégé par le sigle "));
main.appendChild(strong2);
main.append(document.createTextNode(", est un "));
main.appendChild(a1);
main.append(document.createTextNode(' à but non-lucratif chargé de promouvoir la compatibilité des technologies du '));
main.appendChild(a2);

body.appendChild(main);

// Exercice 2
const p1 = document.createElement("p");
    p1.append(document.createTextNode("Dans ma famille, on a eu :"));

const ul1 = document.createElement("ul");

const arr = ["chiens", "chats", "lapins", "tortues"];


const main2 = document.createElement('div');
    main2.id = "container_ex2";

main2.appendChild(p1);

arr.forEach(species => {
    const newElement = document.createElement('li');
    newElement.innerText = `Des ${species}`;
    ul1.appendChild(newElement);
});

main2.appendChild(ul1);

body.appendChild(main2);


// Exercice 3

const main3 = document.createElement('div');
    main3.id = "container_ex3";

const form1 = document.createElement("form");
    form1.enctype = "multipart/form-data";
    form1.method = "post";
    form1.action = "upload.php";

const fieldset1 = document.createElement("fieldset")

const legend1 = document.createElement("legend");
    legend1.innerText = "Uploader une image";

const div1 = document.createElement("div");
    div1.style = "text-align: center";

const label1 = document.createElement("label")
    label1.for = "inputUpload";
    label1.innerText = "Image à uploader";

const input1 = document.createElement("input");
    input1.type = "file";
    input1.name = "inputUpload";
    input1.id = "inputUpload";

let  br = document.createElement("span");
br.innerHTML= "<br /><br /> ";

const submit1 = document.createElement("input");
    submit1.type = "submit";
    submit1.value = "Envoyer";

div1.appendChild(label1);
div1.appendChild(input1);
div1.appendChild(br);
// div1.appendChild(br);
div1.append(submit1);


fieldset1.appendChild(legend1);
fieldset1.appendChild(div1);

form1.appendChild(fieldset1);

main3.appendChild(form1);
body.appendChild(main3);

// Exercice 4

const users = [{
    firstName: 'Marc',
    lastName: 'DUPONT'
    },
    {
    firstName: 'Robert',
    lastName: 'SOLEIL'
    },
    {
    firstName: 'Paul',
    lastName: 'COPPER'
    },
    {
    firstName: 'Max',
    lastName: 'LAMENACE'
    },
    {
    firstName: 'Pierre',
    lastName: 'POLJAK'
    },
    {
    firstName: 'Zoé',
    lastName: 'TERORI'
    }
]

const main4 = document.createElement("div");
    main4.id = "container_ex4";

const p2 = document.createElement("p");
    p2.innerText = "Voici la liste des utilisateurs:";

const ul2 = document.createElement("ul");

users.forEach(elements => {
        const newEntry = document.createElement('li')
        newEntry.innerText =`${elements.firstName} ${elements.lastName}`
        ul2.appendChild(newEntry)
}); 

main4.appendChild(p2)
main4.appendChild(ul2)

body.appendChild(main4)

// Exercice 5
const animals = {
    cat: {
        title: 'Mes chats:',
        names: [
        'Simba',
        'Felix',
        'Tom',
        'Oscar',
        'Charlie'
        ]
    },
    dog: {
        title: 'Mes chiens:',
        names: [
        'Bandit',
        'Paws',
        'Rusty',
        'Rascal',
        'Pepper'
        ]
    }
}

const main5 = document.createElement('div')
    main5.classList.add("container")
    main5.classList.add("row")
    main5.classList.add("mx-auto")
    main5.classList.add("mt5")

const title1 = document.createElement('h1')
    title1.classList.add("text-center")
    title1.classList.add("bg-dark")
    title1.classList.add("text-white")
    title1.classList.add("p-3")
    title1.classList.add("mb-5")
    title1.innerText = "MES ANIMAUX"

main5.append(title1)

function test() {
    for (const [key, value] of Object.entries(animals)){
    console.log(key, value)
        console.log(value)
        console.log(value["names"])
    
    // creation d'une card 
    const newCard = document.createElement("div")
        newCard.classList.add("card")
        newCard.classList.add("mx-auto")
        newCard.classList.add("shadow")
        newCard.classList.add("col-5")
    // creation du body de la card
    const newBody = document.createElement("div")
        newBody.classList.add("card-body")
    
    // creation du titre de la card
    const newCardTitle = document.createElement("h5")
        newCardTitle.classList.add("card-Title")
        newCardTitle.innerText = value["title"]

    // creation du contenu de la card
    const newList = document.createElement('ul')
    // console.log(extValue["names"])
    value["names"].forEach(element => {
        console.log(element)
        const newLine = document.createElement('li');
            newLine.innerText = element
            newList.appendChild(newLine)
    });

    newBody.appendChild(newCardTitle)
    newBody.appendChild(newList)
    newCard.appendChild(newBody)
    main5.appendChild(newBody)
    }
    
}

test()



body.appendChild(main5);