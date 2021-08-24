import React from "react";
import PropTypes from "prop-types";

class Pokemon extends React.Component {
  render() {
    const {
      pokemon: { name, type, averageWeight, image, moreInfo },
    } = this.props;
    return (
      <div className="pokemon">
        <div>
          <p>{`Name: ${name}`}</p>
          <p>{`Type: ${type}`}</p>
          <p>
            {`Average weight: ${averageWeight.value} ${averageWeight.measurementUnit}`}
          </p>
          <img src={image} alt={moreInfo} />
        </div>
      </div>
    );
  }
}

Pokemon.propTypes = {
  pokemon: PropTypes.shape({
    name: PropTypes.string,
    type: PropTypes.string,
    averageWeight: PropTypes.shape({
      value: PropTypes.number,
      measurementUnit: PropTypes.string,
    }),
    image: PropTypes.string,
    moreInfo: PropTypes.string,
  }).isRequired,
};

export default Pokemon;
