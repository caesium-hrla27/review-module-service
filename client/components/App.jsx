import React from "react";
import styled from "styled-components";
import ShippingInfo from "./ShippingInfo.jsx";
import Reviews from "./Reviews.jsx";
import MoreInfo from "./MoreInfo.jsx";
import ArrowUp from "./assets/ArrowUp.jsx";
import ArrowDown from "./assets/ArrowDown.jsx";
import axios from "axios";

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      productId: "M1",
      shippingInfoToggle: false,
      reviewsToggle: false,
      moreInfoToggle: false,
      count: 0,
    };

    this.handleShippingClick = this.handleShippingClick.bind(this);
    this.handleReviewsToggle = this.handleReviewsToggle.bind(this);
    this.handleMoreInfoToggle = this.handleMoreInfoToggle.bind(this);
    this.fetchCount = this.fetchCount.bind(this);
  }

  componentDidMount() {
    this.fetchCount();
  }

  handleShippingClick(e) {
    e.preventDefault();
    this.setState({
      shippingInfoToggle: !this.state.shippingInfoToggle,
      moreInfoToggle: false,
      reviewsToggle: false,
    });
  }

  handleReviewsToggle(e) {
    e.preventDefault();
    this.setState({
      reviewsToggle: !this.state.reviewsToggle,
      shippingInfoToggle: false,
      moreInfoToggle: false,
    });
  }

  handleMoreInfoToggle(e) {
    e.preventDefault();
    this.setState({
      moreInfoToggle: !this.state.moreInfoToggle,
      shippingInfoToggle: false,
      reviewsToggle: false,
    });
  }

  fetchCount() {
    var id = this.state.productId;
    axios
      .get(`/side-bar/review/count/${id}`, { params: { productId: id } })
      .then(c => {
        this.setState({
          count: c.data
        });
      })
      .catch(err => {
        console.error(err);
      });
  }

  render() {
    let shippingInfo;
    let reviews;
    let moreInfo;
    let reviewNumb = this.state.count;

    if (this.state.shippingInfoToggle) {
      shippingInfo = (
        <ShippingInfo
          title="Free Shipping & Returns"
          toggle={this.state.shippingInfoToggle}
        />
      );
    } else if (this.state.reviewsToggle) {
      reviews = <Reviews />;
    } else if (this.state.moreInfoToggle) {
      moreInfo = <MoreInfo />;
    }
    return (
      <div>
        <div onClick={this.handleShippingClick}>
          Free Shipping & Returns
          {this.state.shippingInfoToggle ? <ArrowUp /> : <ArrowDown />}
        </div>
        {shippingInfo}
        <br />
        <div onClick={this.handleReviewsToggle}>
          Reviews ({reviewNumb})
          <span>{this.state.reviewsToggle ? <ArrowUp /> : <ArrowDown />}</span>
        </div>
        {reviews}
        <br />
        <div onClick={this.handleMoreInfoToggle}>
          More Info
          {this.state.moreInfoToggle ? <ArrowUp /> : <ArrowDown />}
        </div>
        {moreInfo}
        <br />
      </div>
    );
  }
}

export default App;
