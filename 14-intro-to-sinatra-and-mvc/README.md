## Sinatra and MVC

### Questions

- CRUD is an acronym that stands for \***\*\_\_\_\_\*\***, **\_\_**, **\_**, & **\_\_**

- **\_** is an interface that allows us to create web applications in Ruby. It was initially used to make static webpages.

- The client sends a packet of information called a **\_** to the server which in turn sends back another packet of information called a **\_\_**.

- **\_\_**s are methods that communicate to the server which CRUD action we want to execute

- When we enter a URL enter our web browser it sends a **\_\_** request to the server

- The **\_\_** and **\_\_** keys in the request headers are what tells our application which method to invoke

- When a method is invoked after an HTTP request it must respond with **\_\_\_** that details the markup for the webpage that the user sees.

- What does MVC stand for?

- What is MVC?

- What type of file allows us to write HTML with ruby embedded?

- Which part of MVC is responsible to handling our routes?

- Which part of MVC do we create our responses?

- Which part of MVC sends the response to the user?

### RESTful Routing
> * <http://www.restular.com/>




### MVC

- structure/pattern
- design pattern
- architecture
- handles communication between models (data/behavior), contollers (middle man, connects the view and the model), and view (front end, user-facing, representation of the data)

- **Model** 
  - communicating with the DB
  - persistence
  - anything "data" related
  - business logic

- **View**
  - representation of the model - HTML, JSON
  - user facing

- **Controller**
  - middle man
  - it manages communication between a model and a view
  - defines endpoints
  - where you will define the response you will provide the client


### Sinatra
- shortcuts for working with HTTP methods
- written in Ruby
- Sinatra is Gem
- platform/framework for creating web applications
- a Rack App
- Convention over Configuration



- light weight web application platform written in Ruby
  - a Rack app (it implements the Rack interface)
  - used to create dynamic web applications
- Corneal - a gem that will create the scaffolding of a Sinatra application for us
    - make a lot of decisions for us, e.g., what db to use, etc.
