import React from 'react';
import styled from 'styled-components';
import StarRating from 'react-star-ratings';

const ReviewsEntryBlockWrapper = styled.div`
  display: block;
  position: relative;
  padding-top: 79px;
`
const RatingSubBlockWrapper = styled.div`
  display: block;
  flex-direction: column;
  width: 30%;
  height: 77px;
  padding-right: 60px;
`
const StarWrapper = styled.div`
  position: relative;
  margin-bottom: 18px;
`

const RateBarBlockWrapper = styled.div`
  margin-bottom: 18px;
  font-size: 11px;
  font-weight: bold;
  display: block;
`

const BarTitleWrapper = styled.div`
  margin-bottom: 7px;
  color: #111;
  font-weight: normal;
  font-size: 14px;
  margin-top: 4px;
  display: block;
`

const Bar = styled.div`
  margin-bottom: 15px;
  background: #EBEBEB;
  width: 100%;
  border-radius: 10px;
  height: 4px;
`

const Ball = styled.div`
  margin-left: calc(${props => props.ball} - 5px);
  background: #111;
  border-radius: 50%;
  width: 8px;
  height: 8px;
  position: relative;
  top: -2px;
`

const BarDescriptionWrapper = styled.div`
  justify-content: space-around;

`

const Description = styled.div`
  width: 48%;
  font-size: 12px;
  font-weight: normal;
  white-space: nowrap;
  color: #6D6D6D;
  margin-top: 7px;
  position: relative;
  top: -15pdx;

`

const ReviewTitleCommentWrapper = styled.div`
display: block;
position: relative;
flex-direction: column;
left: 70%;
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
  const {
    title, comment, rate, size, comfort,
    durability, username, location, upvote,
    downvote, response, pre_launch, createdAt,
  } = props.review;

  return (
    <ReviewsEntryBlockWrapper>
      <RatingSubBlockWrapper>
        <StarWrapper>
          <StarRating
            rating={rate}
            starRatedColor="black"
            numberOfStars={5}
            starDimension="18px"
            starSpacing="1px"
            name="Rating"
          />
        </StarWrapper>
        <RateBarBlockWrapper>
          <BarTitleWrapper>
            Size
          </BarTitleWrapper>
          <Bar>
            <Ball ball={'30%'} />
          </Bar>
          <BarDescriptionWrapper></BarDescriptionWrapper>
        </RateBarBlockWrapper>
        <RateBarBlockWrapper>
          <BarTitleWrapper>
            Comfort
          </BarTitleWrapper>
          <Bar>
            <Ball ball={'30%'} />
          </Bar>
        </RateBarBlockWrapper>
        <RateBarBlockWrapper>
          <BarTitleWrapper>
            Durability
          </BarTitleWrapper>
          <Bar>
            <Ball ball={'50%'}/>
          </Bar>
        </RateBarBlockWrapper>
      </RatingSubBlockWrapper>
      <ReviewTitleCommentWrapper>
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
      </ReviewTitleCommentWrapper>
    </ReviewsEntryBlockWrapper>
  )
}

export default ReviewsEntry;
