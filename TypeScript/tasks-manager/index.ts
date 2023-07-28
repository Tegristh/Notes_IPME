class Task {
    // Private garde privé les données et ne seront pas accessible en dehors
    // des accolades de la classe
    private readonly _id: number
    private _name: string
    private _description: string

    // Static permet de faire en sorte que la valeur ne se remette jamais à 0
    // peu importe le nombre de fois qu'on utilise new (c'est une valeur partagée)
    private static cnt = 0

    // Permet de créer un nouvel objet et d'assigner des valeurs dans nos attributs
    constructor (name: string, description: string) {
        Task.cnt++
        this._id = Task.cnt
        this._name = name
        this._description = description
    }

    get id (): number {
        return this._id
    }

    get name (): string {
        return this._name
    }

    set name (value: string) {
        this._name = value
    }

    get description (): string {
        return this._description
    }

    set description (value: string) {
        this._description = value
    }
}

const tasks: Task[] = [
    new Task('JS', 'Le cours de JS !'),
    new Task('TS', 'Le cours de TS !'),
    new Task('Node', 'Le cours de Node !')
]

tasks.forEach(t => {
    const divContainer = document.createElement('div')

    const title = document.createElement('h2')
    title.textContent = t.name

    const subTitle = document.createElement('h5')
    subTitle.textContent = t.description

    divContainer.append(title, subTitle)
    document.body.appendChild(divContainer)
})
