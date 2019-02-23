import React from 'react';
import styled from 'styled-components';
import PreviewEntry from './Reviews/PreviewEntry.jsx';
import PopUpWindow from './Reviews/PopUpWindow.jsx';

const ExpandReview = styled.div`
height: ${props => props.toggle ? '100%' : '0'};
width: 369px;
`
// transition: 250ms height ease-in;

const PreviewWrapper = styled.div`
  align-items: flex-start;
  text-align: left;
  padding-left: 5px;
`

const MoreReviews = styled.button`
  outline: none;
  border: none;
  cursor: pointer;
  padding-bottom: 4px;
  border-bottom: 1px solid black;
  border-radius: unset;
  font-size: 14px;
  text-align: center;
`
const PopUpReviews = styled.div`
  width: 100%;
  height: ${props => props.toggle ? 'auto' : '0'};
  overflow: hidden;
  `
  // transition: 250ms height ease-in;

const Reviews = (props) => {
  const { moreReviewsToggle } = props;
  let moreReviewsButton;
  if (props.count > 3) {
    moreReviewsButton = <MoreReviews onClick={props.handleMoreReviewsToggle}>More Reviews</MoreReviews>
  }

  return (
    <ExpandReview toggle={props.reviewsToggle}>
      <PreviewWrapper>
        {props.reviews.map((preview, index) => {
          if (index < 3) {
            return <PreviewEntry preview={preview} key={index} />
          }
        })}
        {moreReviewsButton}
        <PopUpReviews toggle={moreReviewsToggle}>
          <PopUpWindow 
          toggleOn={moreReviewsToggle} 
          handleExit={props.handleMoreReviewsToggle} 
          reviews={props.reviews} 
          fetchReviews={props.fetchReviews}
          productDetail={props.productDetail}
          count={props.count}
          />
        </PopUpReviews>
      </PreviewWrapper>
    </ExpandReview>
  );
}

export default Reviews;
