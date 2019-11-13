
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


class Person {
    constructor(firstName, lastName) {
        this.firstName = firstName
        this.lastName = lastName
        this.name = `${firstName} ${lastName}`
        // this.testFunction = this.testFunction.bind(this)
    }

    testFunction = () => {
        console.log(`I am ${this}`)
    }
    // testFunction = function () {
    //     console.log(`I am ${this}`)
    // }

}
let felix = new Person("Felix", "Martinez")
let newFunc = felix.testFunction
newFunc()

// altaf.sayName()

// class Docs: 
// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes

// constructor Docs: 
// https://www.w3schools.com/js/js_object_constructors.asp