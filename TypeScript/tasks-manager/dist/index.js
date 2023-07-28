"use strict";
var Task = /** @class */ (function () {
    // Permet de créer un nouvel objet et d'assigner des valeurs dans nos attributs
    function Task(name, description) {
        Task.cnt++;
        this._id = Task.cnt;
        this._name = name;
        this._description = description;
    }
    Object.defineProperty(Task.prototype, "id", {
        get: function () {
            return this._id;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(Task.prototype, "name", {
        get: function () {
            return this._name;
        },
        set: function (value) {
            this._name = value;
        },
        enumerable: false,
        configurable: true
    });
    Object.defineProperty(Task.prototype, "description", {
        get: function () {
            return this._description;
        },
        set: function (value) {
            this._description = value;
        },
        enumerable: false,
        configurable: true
    });
    // Static permet de faire en sorte que la valeur ne se remette jamais à 0
    // peu importe le nombre de fois qu'on utilise new (c'est une valeur partagée)
    Task.cnt = 0;
    return Task;
}());
var tasks = [
    new Task('JS', 'Le cours de JS !'),
    new Task('TS', 'Le cours de TS !'),
    new Task('Node', 'Le cours de Node !')
];
tasks.forEach(function (t) {
    var divContainer = document.createElement('div');
    var title = document.createElement('h2');
    title.textContent = t.name;
    var subTitle = document.createElement('h5');
    subTitle.textContent = t.description;
    divContainer.append(title, subTitle);
    document.body.appendChild(divContainer);
});
//# sourceMappingURL=index.js.map