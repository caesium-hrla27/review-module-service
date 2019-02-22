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
  justify-content: space-between;
  flex-direction: row;
  display: flex;
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
  font-size: 14px;
  line-height: 1.6;
  color: #111;
  text-transform: capitalize;
  font-weight: bold;
  margin: 0;
  padding: 0;
  border: 0;
  font: inherit;
  vertical-align: baseline;
  display: block;
`

const CommentWrapper = styled.div`
  font-size: 14px;
  line-height: 1.7;
  color: #111;
  margin-bottom: 0;
  word-wrap: break-word;
  margin: 0;
  padding: 0;
  border: 0;
  display: block;
`

const UserInfoSubBlockWrapper = styled.div`
  width: 70%;
  float: right;
  margin-left: 0;
  margin: 0;
  padding: 0;
  border: 0;
  display: block;
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

  const dateCreated = new Date(createdAt);
  const dateArr = dateCreated.toString().split(' ');
  const presentDate = `${dateArr[1]} ${dateArr[2]}, ${dateArr[3]}`;

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
          <BarDescriptionWrapper>
            <div>Runs small</div>
            <div>Runs big</div>
          </BarDescriptionWrapper>
        </RateBarBlockWrapper>
        <RateBarBlockWrapper>
          <BarTitleWrapper>
            Comfort
          </BarTitleWrapper>
          <Bar>
            <Ball ball={'30%'} />
          </Bar>
          <BarDescriptionWrapper>
            <div>Uncomfortable</div>
            <div>Very Comfortable</div>
          </BarDescriptionWrapper>
        </RateBarBlockWrapper>
        <RateBarBlockWrapper>
          <BarTitleWrapper>
            Durability
          </BarTitleWrapper>
          <Bar>
            <Ball ball={'50%'}/>
          </Bar>
          <BarDescriptionWrapper>
            <div>Not Durable</div>
            <div>Very Durable</div>
          </BarDescriptionWrapper>
        </RateBarBlockWrapper>
      </RatingSubBlockWrapper>
      <ReviewTitleCommentWrapper>
        <TitleWrapper>
          {title}
        </TitleWrapper>
        <CommentWrapper>
          {comment}
        </CommentWrapper>
      </ReviewTitleCommentWrapper>
      <UserInfoSubBlockWrapper>
        <UserInfoWrapper>
          {presentDate + ' - ' + username + ' - ' + location}
        </UserInfoWrapper>
        <VoteWrapper>
          Vote
        </VoteWrapper>
      </UserInfoSubBlockWrapper>
    </ReviewsEntryBlockWrapper>
  )
}

export default ReviewsEntry;
