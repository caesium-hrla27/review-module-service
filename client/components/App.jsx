import React from 'react';
import styled from 'styled-components';
import ShippingInfo from './ShippingInfo.jsx';
import Reviews from './Reviews.jsx';
import MoreInfo from './MoreInfo.jsx';



class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      shippingInfoToggle: false,
      reviewsToggle: false,
      moreInfoToggle: false
    }

    this.handleShippingClick = this.handleShippingClick.bind(this);
    this.handleReviewsToggle = this.handleReviewsToggle.bind(this);
    this.handleMoreInfoToggle = this.handleMoreInfoToggle.bind(this);
    this.resetToggles = this.resetToggles.bind(this);
  }

  handleShippingClick(e) {
    e.preventDefault();
    this.resetToggles();
    this.setState({
      shippingInfoToggle: !this.state.shippingInfoToggle
    })
  } 

  handleReviewsToggle(e) {
    e.preventDefault();
    this.resetToggles();
    this.setState({
      reviewsToggle: !this.state.reviewsToggle
    })
  }

  handleMoreInfoToggle(e) {
    e.preventDefault();
    this.resetToggles();
    this.setState({
      moreInfoToggle: !this.state.moreInfoToggle
    })
  }

  resetToggles() {
    this.setState({
      shippingInfoToggle: false,
      reviewsToggle: false,
      moreInfoToggle: false
    })
  }

  render() {
    let shippingInfo;
    let reviews;
    let moreInfo;

    if (this.state.shippingInfoToggle) {
      shippingInfo = <ShippingInfo 
        title="Free Shipping & Returns" 
        toggle={this.state.shippingInfoToggle}
      />;
    } else if (this.state.reviewsToggle) {
      reviews = <Reviews />;
    } else if (this.state.moreInfoToggle) {
      moreInfo = <MoreInfo />;
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
        <div onClick={this.handleReviewsToggle}>Reviews
          {this.state.reviewsToggle
          ? <a>^</a>
          : <a>V</a>
          }
        </div>
        {reviews}
        <div onClick={this.handleMoreInfoToggle}>More Info
          {this.state.moreInfoToggle
          ? <a>^</a>
          : <a>V</a>
          }
        </div>
        {moreInfo}
      </div>
    )
  }
}

export default App;