document.addEventListener("DOMContentLoaded", function(){
    
    let rapperUl = document.getElementById("rappers")
    let addButton = document.createElement("button")
    addButton.innerText = "Add New Celeb"
    addButton.hidden = false
    rapperUl.parentNode.insertBefore(addButton, rapperUl)
    let form = document.createElement("form")
    form.innerHTML = '<div id = "form-div">\
    <label>Rapper Name</label>\
    <input type="text" name="Rapper Name">\
    <label>Image URL</label>\
    <input type="text" name="Image URL">\
    <input type="submit">\
    </div>'
    form.hidden = true
    rapperUl.parentNode.insertBefore(form, addButton)

    function appendCeleb(obj){
        let li = document.createElement("li")
        li.innerHTML = `<h3>${obj.name}</h3>\
                        <h4>Score: <span>0</span> </h4>\
                        <img alt="Drake is no rapper" class="rapper"
            src="${obj.image}" />
        <button id = "up-button">Up Vote 😘😍😘</button>
        <button id = "down-button">Down Vote 🖕🤮🖕</button>
        <button id = "delete-button">XXX 🔞</button>`
        rapperUl.appendChild(li)
    }

    
    addButton.addEventListener("click", function(e){
        form.hidden = false
        addButton.hidden = true
        form.addEventListener("submit", function(subEvent){
            subEvent.preventDefault()
            // console.log(subEvent)
            let name = subEvent.target[0].value
            let image = subEvent.target[1].value
            let newCeleb = {name: name, image: image}
            appendCeleb(newCeleb)
            form.hidden = true
            addButton.hidden = false
        })
    })

    rapperUl.addEventListener("click", function(e){
        if (e.target.id === "up-button") {
            let liNode = e.target.parentNode
            let span = liNode.children[1].firstElementChild
            let score = parseInt(span.innerText)
            score++
            span.innerText = score
            console.log(span)
        } else if (e.target.id === "down-button"){
            console.log("downing")
        } else if (e.target.id === "delete-button"){
            console.log("xxx")
        }
    })

}) //end of DOM Content Loaded Listener