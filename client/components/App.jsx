import React from "react";
import styled from "styled-components";
import ShippingInfo from "./ShippingInfo.jsx";
import Reviews from "./Reviews.jsx";
import MoreInfo from "./MoreInfo.jsx";
import ArrowUp from "./assets/ArrowUp.jsx";
import ArrowDown from "./assets/ArrowDown.jsx";
import axios from "axios";
import StarRatings from "react-star-ratings";

const SideMenuBarButton = styled.button`
  outline: none;
  border-radius: 0px;
  position: relative;
  display: flex;
  background: transparent;
  box-shadow: inset 0 1px 0 0 #e5e5e5;
  width: 400px;
  padding-bottom: 28px;
  padding-top: 28px;
  padding-right: 0px;
  padding-left: 0px;
  border: none;
  flex-flow: row wrap;
  justify-content: flex-start;
  box-sizing: border-box;
  cursor: pointer;
`
const TitleWrapper = styled.div`
  text-align: left;
  padding-right: 4px;
  padding-left: 4px;
  display: inline-block;
  font-size: 14px;
`
const SideMenuBarTitle = styled.h3`
  display: block;
  width: 306.156px;
  font-weight: 500;
  font-size: 20px;
  line-height: 1.2;
  margin-block-start: 1em;
  margin-block-end: 1em;
  margin-inline-start: 0px;
  margin-inline-end: 0px;
  padding: 0;
  margin: 0;
`
const ArrowHolder = styled.div`
  position: absolute;
  top: 50%;
  transform: translateY(-80%);
  right: 0px;
  text-align: right;
  padding-right: 4px;
  padding-left: 4px;
  display: inline-block;
`
const ArrowSpan = styled.span`
  display: inline-block;
  position: relative;
  width: 18px;
  height: 8px;
  top: 3px;
`
var RenderMenu = styled.div`
  padding: 0;
  -webkit-transition: 250ms height ease-in;
  padding-bottom: ${props => props.toggle ? '32px' : '0'};
  height: ${props => props.toggle ? 'auto' : '0'};
  overflow: hidden;
`
const RenderShippingInfo = styled.div`
  width: 369px;
`
const RenderReviews = styled.div`
  width: 369px;
`
const RenderMoreInfo = styled.div`
  width: 369px;
`

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
    const { shippingInfoToggle, reviewsToggle, moreInfoToggle } = this.state;
    const reviewNumb = this.state.count;

    return (
      <div>
        <SideMenuBarButton onClick={this.handleShippingClick}>
          <TitleWrapper>
            <SideMenuBarTitle>Free Shipping & Returns</SideMenuBarTitle>
          </TitleWrapper>
          <ArrowHolder>
            <ArrowSpan>{shippingInfoToggle ? <ArrowUp /> : <ArrowDown />}</ArrowSpan>
          </ArrowHolder>
        </SideMenuBarButton>
        <RenderMenu aria-hidden={!shippingInfoToggle} toggle={shippingInfoToggle}>
          <ShippingInfo
            title="Free Shipping & Returns"
            toggle={shippingInfoToggle}
          />
        </RenderMenu>

        <SideMenuBarButton onClick={this.handleReviewsToggle}>
          <TitleWrapper>
            <SideMenuBarTitle>Reviews ({reviewNumb})</SideMenuBarTitle> 
          </TitleWrapper>
          <ArrowHolder>
            <StarRatings
              rating={4.3}
              starRatedColor="black"
              numberOfStars={5}
              starDimension="18px"
              starSpacing="1px"
              name="avgRating"
            />
            <ArrowSpan>{this.state.reviewsToggle ? <ArrowUp /> : <ArrowDown />}</ArrowSpan>
          </ArrowHolder>
        </SideMenuBarButton>
        <RenderMenu aria-hidden={!reviewsToggle} toggle={reviewsToggle}>
          <Reviews reviewsToggle={reviewsToggle}/>
        </RenderMenu>

        <SideMenuBarButton onClick={this.handleMoreInfoToggle}>
          <TitleWrapper>
            <SideMenuBarTitle>More Info</SideMenuBarTitle>
          </TitleWrapper>
          <ArrowHolder>
            <ArrowSpan>{this.state.moreInfoToggle ? <ArrowUp /> : <ArrowDown />}</ArrowSpan>
          </ArrowHolder>
        </SideMenuBarButton>
        <RenderMenu aria-hidden={!moreInfoToggle} toggle={moreInfoToggle}>
          <MoreInfo />
        </RenderMenu>
      </div>
    );
  }
}

export default App;
