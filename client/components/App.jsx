import React from 'react';
import styled from 'styled-components';
import ShippingInfo from './ShippingInfo.jsx';



class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      shippingInfoToggle: false
    }

    this.handleShippingClick = this.handleShippingClick.bind(this);
  }

  handleShippingClick(e) {
    e.preventDefault();
    this.setState({
      shippingInfoToggle: !this.state.shippingInfoToggle
    })
  } 

  render() {
    let shippingInfo;

    if (this.state.shippingInfoToggle) {
      shippingInfo = <ShippingInfo 
        title="Free Shipping & Returns" 
        toggle={this.state.shippingInfoToggle}
      />
    }
    return (
      <div>
        <div onClick={this.handleShippingClick}>Free Shipping & Returns
          {this.state.shippingInfoToggle
          ? <a>^</a>
          : <a>V</a>
          }
        </div>
        {shippingInfo}
      </div>
    )
  }
}

export default App;