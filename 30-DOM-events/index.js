console.log("starting")
let drake = document.getElementById("drake")

let celebrities = [
    {
        id: 4,
        name: "DJ Khaled",
        image: "https://static.hiphopdx.com/2019/06/190607-DJ-Khaled-826x620.jpg"
    },
    {
        id: 5,
        name: "Riff Raff",
        image: "https://media1.fdncms.com/inlander/imager/u/original/2804745/music2-1-e5806a0b99bd9e9c.jpg"
    },
    {
        id: 6,
        name: "Kim Kardashian",
        image: "https://a57.foxnews.com/static.foxnews.com/foxnews.com/content/uploads/2019/05/931/524/Kim-Kardashian.jpg?ve=1&tl=1"
    },
]

function clickHandler(e) {
    debugger
    let parent = e.target.parentNode.querySelector("h4 span")
    let num = parseInt(parent.innerText)
    num++
    parent.innerText = num
    console.log("clicking")
}

let parentUl = document.getElementsByTagName("ul")[0]

celebrities.forEach(function (element) {
    let li = document.createElement("li")
    let h3 = document.createElement("h3")
    let h4 = document.createElement("h4")
    let img = document.createElement("img")
    let buttonUp = document.createElement("button")
    let buttonDown = document.createElement("button")
    h3.innerText = `${element.name}`
    h4.innerHTML = "Score: <span>0</span>"
    img.src = `${element.image}`
    buttonUp.innerText = "Up Vote"
    buttonUp.className = "upButton"
    buttonDown.innerText = "Down Vote"

    li.appendChild(h3)
    li.appendChild(h4)
    li.appendChild(img)
    li.appendChild(buttonUp)
    li.appendChild(buttonDown)

    parentUl.appendChild(li)


})


let buttons = document.getElementsByClassName("upButton")
HTMLCollection.prototype.forEach = Array.prototype.forEach


buttons.forEach(function (element) {
    element.addEventListener("click", clickHandler)
})


//Using Query Selector with a Dataset
/*


document.querySelector("button[data-id=drakeButton]")
    < button data - id=​"drakeButton" data - beef=​"steak" data - rapper=​"nah" class=​"upButton" > Up
Vote​</button >



*/







// let buttonsArray = Array.from(buttons)


