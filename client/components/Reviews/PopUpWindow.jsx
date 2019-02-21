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
  right: 12px;
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

const PopUpWindow = (props) => {

  return (
    <PopUpWrapper toggle={props.toggleOn}>
      <NavBar>
        <div>
          Please work
        </div>
        <div>
        <ExitButton onClick={props.handleExit}><span><ExitCross /></span></ExitButton>
        </div>
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
                <ReviewsEntry
                rate={review.rate}
                comfort={review.comfort}
                durability={review.durability}
                size={review.size}
                title={review.title}
                comment={review.comment}
                username={review.username}
                createdAt={review.createdAt}
                location={review.location}
                upvote={review.upvote}
                downvote={review.downvote}
                response={review.response}
                pre_launch={review.pre_launch}
                />
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
