# CRUD: Sinatra API 

### Lecture Take Aways:

- Request-response cycle
- APIs
- Active Record
- Rack
- Sinatra
- Routes
- HTTP methods
- Params
- Strong params
- Dynamic routing
- POST/PATCH/DELETE requests
- Using React to send server requests

### What is Rack?

"Rack is the underlying technology behind nearly all of the web frameworks in the Ruby world." - Thoughtbot

[Great Article on Rack](https://thoughtbot.com/upcase/videos/rack)


### Difference between an API and Server

[What Exactly is an API?](https://medium.com/@perrysetgo/what-exactly-is-an-api-69f36968a41f)

### RESTful Routes:

| HTTP Verb | Endpoint  | Action  |
| :---:   | :-: | :-: |
| GET | /starships | Index |
| GET | /starships/:id | Show |
| POST | /starships | Create |
| PATCH | /starships/:id | Update |
| DELETE | /starships/:id | Destroy |

### Lecture Deliverables:

- To follow along with today's lecture, we will be working in 2 different repo's and terminals.
- CD into 'demo' and start the server by running `bundle exec rake server`. The routes will be defined in `StarshipController`.
- Then open a new terminal, CD back into the root directory and then cd into `demo react` and run `npm start` to start the React server. 
- Today we will communicate via a very simple React project to make requests to our API and receive responses that will be used in the application. 

### Breakout Exercise:

1. For this exercise, cd into both `exercise` and `exercise-react` in two separate terminals.
2. In `exercise-react`, run `npm start` to run the React server. 
3. We will be using the `PizzasContainer` to complete the full CRUD cycle of this application. Do not worry about building other components. We will keep this application really simple and focus on the requests sent from React to our API.
4. Create a show route that will request details for one pizza with the given id. First create a request from the frontend, and then write the response for the request on the backend. 
5. Create an event handler for an edit form that will send a PATCH request to the backend. 
6. Create an event handler that will invoke upon a delete button click and send a request to the backend to delete a pizza with the given id. 