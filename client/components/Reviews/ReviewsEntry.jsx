import React from 'react';
import styled from 'styled-components';
import StarRating from 'react-star-ratings';

const ReviewsEntryBlockWrapper = styled.div`
  display: block;
  position: relative;
  padding-top: 79px;
`
const RatingSubBlockWrapper = styled.div`
  display: flex;
  flex-direction: column;
  width: 100%;
  height: 77px;
`
const StarWrapper = styled.div`
  display: block;
  position: relative;
`

const SizeWrapper = styled.div`
  position: relative;
`

const ComfortWrapper = styled.div`
  position: relative;
`

const DurabilityWrapper = styled.div`
  position: relative;
`

const ReviewDetailSubBlockWrapper = styled.div`
position: relative;
flex-direction: column;
`

const TitleWrapper = styled.div`

`

const CommentWrapper = styled.div`

`

const UserInfoWrapper = styled.div`

`

const VoteWrapper = styled.div`

`

const ReviewsEntry = (props) => {
  console.log('reviews entry')
  return (
    <ReviewsEntryBlockWrapper>
      reviews entry block
      <RatingSubBlockWrapper>
        rating sub block
        <StarWrapper>
          <StarRating
            rating={props.rate}
            starRatedColor="black"
            numberOfStars={5}
            starDimension="18px"
            starSpacing="1px"
            name="Rating"
          />
        </StarWrapper>
        <SizeWrapper>
          Placeholder size
        </SizeWrapper>
        <ComfortWrapper>
          PlaceHolder comfort
        </ComfortWrapper>
        <DurabilityWrapper>
          PlaceHolder durability
        </DurabilityWrapper>
      </RatingSubBlockWrapper>
      <ReviewDetailSubBlockWrapper>
        review detail sub block
        <TitleWrapper>
          Title
        </TitleWrapper>
        <CommentWrapper>
          Comment
        </CommentWrapper>
        <UserInfoWrapper>
          UserInfo
        </UserInfoWrapper>
        <VoteWrapper>
          Vote
        </VoteWrapper>
      </ReviewDetailSubBlockWrapper>
    </ReviewsEntryBlockWrapper>
  )
}

export default ReviewsEntry;
