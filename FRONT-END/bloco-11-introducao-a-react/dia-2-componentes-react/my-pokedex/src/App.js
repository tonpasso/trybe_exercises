import "./App.css";
import pokeInfo from "./data";

import Pokedex from "./components/Pokedex";

function App() {
  return (
    <div className="App">
      <h1>Pokedex</h1>
      <Pokedex pokemon={pokeInfo} />
    </div>
  );
}

export default App;
