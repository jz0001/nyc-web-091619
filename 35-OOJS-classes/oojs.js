
function whatIsThis() {
    console.log(`This is: ${this}`)
    // return this
}

// whatIsThis()

function sayName(greeting, something) {
    console.log(`${greeting} my ${something} is ${this.name}`)
}

// let arrowFunc = (arg) => arg === 2 ? console.log("true") : console.log("false")


// console.log(arrowFunc(3))



// IIFE
// immediately invoked function expression

// let felix = {
//     firstName: "Felix",
//     lastName: "Martinez",
//     name: "Felix Martinez",
//     sayName: sayName,
//     whatIsThis: whatIsThis
// }
// let altaf = {
//     firstName: "Altaf",
//     lastName: "Quadri",
//     name: "Altaf Quadri",
//     sayName: sayName,
//     whatIsThis: whatIsThis
// }


// felix.sayName()
// felix.sayName.apply(altaf, ["Wassup", "rap name"])

// function person(firstName, lastName) {
//     return {
//         firstName: firstName,
//         lastName: lastName,
//         name: `${firstName} ${lastName}`,
//         sayName: sayName,
//         whatIsThis: whatIsThis
//     }
// }

// let felix = person("Felix", "Martinez")
// let altaf = person("Altaf", "Quadri")

// console.log(felix.sayName())
// console.log(altaf.sayName())

// function Person(firstName, lastName) {
// this.firstName = firstName
// this.lastName = lastName
// this.name = `${firstName} ${lastName}`
// }

// let felix = new Person("Felix", "Martinez")
// console.log(felix.name)


class Celebrity {
    constructor(firstName, lastName) {
        this.firstName = firstName
        this.lastName = lastName
        this.name = `${firstName} ${lastName}`
        this.id = Celebrity.id
        Celebrity.id++
        Celebrity.all.push(this)
        this.beKanye = this.beKanye.bind(this)
    }

    static classMethod() { console.log("this is a class method") }

    // static all = []

    beKanye() {
        console.log(`${this.name} White Tees $500`)
    }

    landMovieRole() {
        console.log("Got random movie role that I'm probably bad in")
    }

}
Celebrity.all = []
Celebrity.id = 1


let felix = new Celebrity("Felix", "Martinez")


let someFunc = felix.beKanye

someFunc()

