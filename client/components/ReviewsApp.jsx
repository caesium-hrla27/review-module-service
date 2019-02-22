import React from 'react';
import styled from 'styled-components';
import StarRatings from 'react-star-ratings';
import axios from 'axios';

import ShippingInfo from "./ShippingInfo.jsx";
import Reviews from "./Reviews.jsx";
import MoreInfo from "./MoreInfo.jsx";
import ArrowUp from "./assets/ArrowUp.jsx";
import ArrowDown from "./assets/ArrowDown.jsx";

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
  transition: 250ms height ease-in;
  padding-bottom: ${props => props.toggle ? '32px' : '0'};
  height: ${props => props.toggle ? '100%' : '0'};
  overflow: hidden;
`
const NeedHelp = styled.div`
  vertical-align: middle;
  position: relative;
  top: 3px;
  font-size: 12px;
  font-weight: bold;
`
const ChatNow = styled.button`
  height: 14px;
  outline: none;
  border-radius: 0px;
  position: relative;
  display: flex;
  background: transparent;
  padding: 0;
  margin-right: 12px;
  margin-left: 2px;
  top: 3px;
  border: none;
  flex-flow: row wrap;
  justify-content: flex-start;
  box-sizing: border-box;
  cursor: pointer;
  border-bottom: 1px solid black;
  font-size: 12px;
  text-align: center;
  `
  const ChatModule = styled.div`
  display: flex;
  padding-bottom: 4px;
  padding-top: 28px;
  box-shadow: inset 0 1px 0 0 #e5e5e5;
  flex-direction: row;
  justify-content: flex-start;
  position: relative;
  width: 400px;
`
const ImageWrapper = styled.img`
  vertical-align: middle;
  height: 24px;
  margin-right: 12px;
`

class ReviewsApp extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      productId: "M1",
      shippingInfoToggle: false,
      reviewsToggle: false,
      moreReviewsToggle: false,
      moreInfoToggle: false,
      reviews: [],
      product: {},
      count: 0,
    };

    this.handleShippingClick = this.handleShippingClick.bind(this);
    this.handleReviewsToggle = this.handleReviewsToggle.bind(this);
    this.handleMoreInfoToggle = this.handleMoreInfoToggle.bind(this);
    this.handleMoreReviewsToggle = this.handleMoreReviewsToggle.bind(this);
    this.fetchPreviews = this.fetchPreviews.bind(this);
    this.fetchReviews = this.fetchReviews.bind(this);
    this.fetchCount = this.fetchCount.bind(this);
  }

  componentDidMount() {
    this.fetchCount();
    this.fetchPreviews();
    this.fetchProductDetail();
  }

  fetchPreviews() {
    axios
      .get('/api/review/preview', {
        params: {
          productId: this.state.productId,
        },
      })
      .then((response) => {
        this.setState({
          reviews: [...response.data],
          count: response.data.length,
        });
      })
      .catch((err) => {
        console.error(err);
      });
  };

  fetchReviews() {
    axios
      .get('/api/review/fullview')
      .then((response) => {
        this.setState({
          reviews: [...this.state.reviews, ...response.data],
        });
      })
      .catch((err) => {
        console.error(err);
      });
  };

  fetchProductDetail() {
    var id = this.state.productId;
    axios
      .get(`/api/product-detail/${id}`, {
        params: {
          id: id,
        },
      })
      .then((response) => {
        this.setState({
          product: response.data,
        });
      })
      .catch((err) => {
        console.error(err);
      });
  };

  fetchCount() {
    var id = this.state.productId;
    axios
      .get(`/api/review/count/${id}`, { params: { productId: id } })
      .then(c => {
        this.setState({
          count: c.data
        });
      })
      .catch(err => {
        console.error(err);
      });
  }
  handleShippingClick(e) {
    e.preventDefault();
    this.setState({
      shippingInfoToggle: !this.state.shippingInfoToggle,
      moreInfoToggle: false,
      reviewsToggle: false,
    });
  };

  handleReviewsToggle(e) {
    e.preventDefault();
    this.setState({
      reviewsToggle: !this.state.reviewsToggle,
      shippingInfoToggle: false,
      moreInfoToggle: false,
    });
  };

  handleMoreReviewsToggle(e) {
    e.preventDefault();
    this.setState({
      moreReviewsToggle: !this.state.moreReviewsToggle,
    });
  };

  handleMoreInfoToggle(e) {
    e.preventDefault();
    this.setState({
      moreInfoToggle: !this.state.moreInfoToggle,
      shippingInfoToggle: false,
      reviewsToggle: false,
    });
  };


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
          <Reviews 
          reviewsToggle={reviewsToggle}
          reviews={this.state.reviews}
          count={this.state.count}
          fetchReviews={this.fetchReviews}
          moreReviewsToggle={this.state.moreReviewsToggle}
          handleMoreReviewsToggle={this.handleMoreReviewsToggle}
          productDetail={this.state.product}
          />
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
        <ChatModule>
          <ImageWrapper 
            src={'https://s3-us-west-1.amazonaws.com/cs-nike-fec/pdp-chat-invite-desktop.png'} 
            alt="Chat icon"
          />
          <NeedHelp>Need Help?</NeedHelp>
          <ChatNow>Chat Now</ChatNow>
        </ChatModule>
      </div>
    );
  }
}

export default ReviewsApp;
