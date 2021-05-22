// App.js
import React from "react";
import "./App.css";

class App extends React.Component {
  constructor() {
    super();
    this.state = {
      email: "",
      saveEmail: "",
    };
  }

  changeEmail(value) {
    this.setState({
      email: value,
    })
  }

  changeSaveEmail(value) {
    this.setState({ 
      saveEmail: value,
      email: '',
    })
  }

  render() {
    const { email, saveEmail } = this.state;
    return (
      <div className="App">
        <label htmlFor="id-email">
          Email
          <input 
            id="id-email" 
            type="email" 
            value={ email }
            onChange={ (event) => this.changeEmail(event.target.value)}
           />
        </label>
        <input
            id="btn-enviar"
            type="button"
            data-testid="id-send"
            value="Enviar"
            onClick={ () => this.changeSaveEmail(email) }
        />
        
        <input id="btn-id" type="button" value="Voltar"/>
        <h3 data-testid="id-email-user">{`Valor: ${ saveEmail }`}</h3>
      </div>
    );
  }
}

export default App;
