console.log("wassup")

// let name;

let newFunction = function () { return function () { console.log("inner function") } }

// create a function that takes in an outer number and returns an inner function who's job it is to multiply that number 
function multiplyByN(outerNum) {
    return function (n) {
        console.log(outerNum * n)

    }
}
const multiplyByTen = multiplyByN(10)



//Global scope, Function scope, Block Scope

