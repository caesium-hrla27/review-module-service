import React from 'react';
import styled from 'styled-components';
import ShippingInfo from './ShippingInfo.jsx';



class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      shippingInfoToggle: false
    }
  }

  render() {
    return (
      <div>
        <button>Free Shipping & Returns <a>V</a> </button>
        <ShippingInfo 
          title="Free Shipping & Returns" 
          toggle={this.state.shippingInfoToggle}
        />
      </div>
    )
  }
}

export default App;