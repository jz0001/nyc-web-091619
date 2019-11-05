document.addEventListener("DOMContentLoaded", function(){
    
    let api = "http://localhost:3000/celebrities"

    let fetchCall = function(){
        fetch(api)
        .then(function(resp){return resp.json()})
        .then(function(data){data.forEach(appendCeleb)})
    }
    fetchCall();


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
        let liNode = e.target.parentNode
        if (e.target.id === "up-button") {
            let span = liNode.children[1].firstElementChild
            let score = parseInt(span.innerText)
            score++
            span.innerText = score
        } else if (e.target.id === "down-button"){
            let span = liNode.children[1].firstElementChild
            let score = parseInt(span.innerText)
            score--
            span.innerText = score
        } else if (e.target.id === "delete-button"){
            liNode.remove()
        } else if (e.target.tagName === "H3"){
            let h3form = document.createElement("input"); //create an input
            h3form.setAttribute('type', 'text');//input type = type, value of input type is text
            h3form.setAttribute('value', 'Enter new name');
            e.target.parentNode.replaceChild(h3form, e.target) //use the form to swap the name
            //need to create changeHandler
        }
    
    })




}) //end of DOM Content Loaded Listener