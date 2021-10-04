function PizzasContainer() {

  // index action 
  const getPizzas = () => {
    fetch('http://localhost:9292/pizzas')
    .then(resp => resp.json())
    .then(pizzas => console.log(pizzas))
  }

  // show action 

  const getPizza = id => {
    fetch(`http://localhost:9292/pizzas/${id}`)
    .then(resp => resp.json())
    .then(pizza => console.log(pizza))
  }  

  // update action 

  const updatePizza = (formData, id) => {
    const { name, desc, ingredients} = formData
    
    const pizza = {
      name, 
      desc, 
      ingredients
    }

    const configObj = {
      method: 'PATCH', 
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(pizza)
    }

    fetch(`http://localhost:9292/pizzas/${id}`, configObj)
    .then(resp => resp.json())
    .then(pizza => console.log(pizza))
  }

  // delete a pizza 
  
  const deletePizza = id => {
    fetch(`http://localhost:9292/pizzas/${id}`, {
      method: 'DELETE'
    })
  }

  debugger
  
  return (
    <div>
      PizzasContainer Component
    </div>
  );
}

export default PizzasContainer;
