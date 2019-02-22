import React from 'react';
import styled from 'styled-components';
import ExitCross from '../assets/ExitCross.jsx';
import ReviewsEntry from './ReviewsEntry.jsx';
import StarRating from 'react-star-ratings';

const PopUpWrapper = styled.div`
  display: block;
  position: ${props => props.toggle ? 'absolute' : 'relative'};
  margin: 0;
  padding: 0;
  border: 0;
  overflow: hidden;
  background: white;
  z-index: ${props => props.toggle ? '5' : '0'};
  height: ${props => props.toggle ? '100%' : '0'};
  top: 0;
  left: 0;
  width: 100%;
  bottom: auto;
  `
  // transition: 250ms height ease-in;

const NavBar = styled.div`
  flex: 0 0 auto;
  box-shadow: inset 0 -1px 0 0 #e5e5e5;
  padding: 16px 8px 16px 8px;
  z-index: 10;
  width: 100%;
  height: 79px;
  margin: 0;
  border: 0;
  vertical-align: baseline;
  display: flex;
  position: absolute;
  flex-wrap: row wrap;
  align-items: center;
  justify-content: space-between;
  overflow: hidden;
  background-color: white;
`

const ExitButton = styled.button`
  border: none;
  cursor: pointer;
  justify-content: flex-end;
  padding: 16px 7px 2px 7px;
  top: 12px;
  right: 24px;
  position: absolute;
`

// image wrapper?
// position: absolute;
// top: 12px;
// left: 12px;
// padding: 16px 7px 2px 16px;

const ReviewsWrapper = styled.div`
max-width: 1440px;
margin: 0 auto;
padding: 0 24px;
font-family: 'Helvetica Neue',Helvetica,Verdana,Arial,Helvetica,sans-serif;
    font-size: 12px;
  overflow-y: scroll;
  scroll-behavior: smooth;
  flex: 1 1 auto;
  padding-right: 0;
  padding-left: 0;
  width: 100%;
`

const ReviewsInnerWrapper = styled.div`
  margin: 0;
  padding: 0;
  border: 0;
  font: inherit;
  vertical-align: baseline;
  box-sizing: border-box;
  display: block;
`

const ReviewsSection = styled.div`
  max-width: 1440px;
  margin: 0 auto;
  padding: 0 24px;
  font-family: 'Helvetica Neue',Helvetica,Verdana,Arial,Helvetica,sans-serif;
  font-size: 12px;
  `
const ReviewsSummary = styled.div`
  background: transparent;
  border: 0;
  padding: 55px 0 0;
  margin: 0 auto;
  max-width: 1000px;
  margin-left: auto;
  margin-right: auto;
  z-index: 5;
  position: relative;
`

const AverageBlockWrapper = styled.div`
  flex-direction: column;
  border: 0;
  padding: 55px 0 0;
  margin: 0 auto;
  max-width: 1000px;
`

const AverageStarWrapper = styled.div`

`

const NumberOfReviewsWrapper = styled.div`

`

const AverageRatingsWrapper = styled.div`
  flex-direction: row;
`

const ShoeImgWrapper = styled.div`
display: flex;
flex-direction: row;
`

const ShoeImg = styled.img`
max-width: 60px;
max-height: 60px;
`

const ShoeImgInfo = styled.div`
width: 100%;
max-width: calc(100% - 60px);
padding-left: 12px;
padding-right: 12px;
padding-top: 8px;
display: inline-block;
flex-direction: column;
`

const ShoeName = styled.p`
font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
line-height: 1.714285714285714;
margin: 0;
padding: 0;
border: 0;
font: inherit;
vertical-align: baseline;
display: block;
margin-block-start: 1em;
margin-block-end: 1em;
margin-inline-start: 0px;
margin-inline-end: 0px;
`

const ShoePrice = styled.div`
color: #111;
margin: 0;
padding: 0;
border: 0;
font: inherit;
vertical-align: baseline;
display: block;
text-align: center;
`

const PopUpWindow = (props) => {

  return (
    <PopUpWrapper toggle={props.toggleOn}>
      <NavBar>
        <ShoeImgWrapper>
          <ShoeImg src={props.productDetail.product_img} alt={props.productDetail.product_name} />
          <ShoeImgInfo>
            <ShoeName>
              {props.productDetail.product_name}
            </ShoeName>
            <ShoePrice>
              {props.productDetail.price}
            </ShoePrice>
          </ShoeImgInfo>
        </ShoeImgWrapper>
        <ExitButton onClick={props.handleExit}><span><ExitCross /></span></ExitButton>
      </NavBar>
      <ReviewsWrapper>
        <ReviewsInnerWrapper>
          <ReviewsSection>
            <ReviewsSummary>

              <StarRating
              rating={4.25}
              starRatedColor="black"
              numberOfStars={5}
              starDimension="18px"
              starSpacing="1px"
              name="avgRatingProduct"
              />
              {props.reviews.map((review) => {
                return (
                <ReviewsEntry review={review} />
                )
              })}
            </ReviewsSummary>
          </ReviewsSection>
        </ReviewsInnerWrapper>
      </ReviewsWrapper>
    </PopUpWrapper>
  );
};

export default PopUpWindow;
