function StarshipsContainer() {

  // write the event handlers 

  // a request for the index endpoint: receive all starship records

  // get invoked upon a component mounting 
  const getStarships = () => {
    fetch("http://localhost:9292/starships")
    .then(resp => resp.json())
    .then(data => console.log(data))
  }

  // what about post request? What point in apps lifecycle
  // Create a new starship form has been submitted

  const createStarship = (formData) => {

    // formData is going to be an object with k,v pairs
    const { name, color, model } = formData 
    
    const starship = {
      name, 
      model,
      color
    }

    const configObj = {
      method: "POST",
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(starship)
    }

    fetch("http://localhost:9292/starships", configObj)
    .then(resp => resp.json())
    .then(starship => console.log(starship))
  }


  // Upon a click on a starship tile, to show particular starship details(show page)
  const getStarship = (id) => {

    fetch(`http://localhost:9292/starships/${id}`)
    .then(resp => resp.json())
    .then(starship => console.log(starship))
  }


  // this event handler will be invoked when an edit form is submitted

  const updateStarship = (formData, starshipId) => {

    // formData is going to be an object with k,v pairs
    const { name, color, model } = formData 
    
    const starship = {
      name, 
      model,
      color
    }

    const configObj = {
      method: "PATCH",
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(starship)
    }

    fetch(`http://localhost:9292/starships/${starshipId}`, configObj)
    .then(resp => resp.json())
    .then(starship => console.log(starship))
  }


  debugger;

  return (
    <div>
      StarshipsContainer Component
    </div>
  );
}

export default StarshipsContainer;
