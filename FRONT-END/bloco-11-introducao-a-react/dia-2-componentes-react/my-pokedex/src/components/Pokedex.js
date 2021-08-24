import React from 'react'
import Pokemon from './Pokemon'

class Pokedex extends React.Component {
  render() {
    const { pokemon } = this.props;

    return (  
      <div className="pokedex">
        
        {pokemon.map(poke => <Pokemon pokemon={poke} />)}
       
      </div>
    );
  }
}
 
export default Pokedex;
