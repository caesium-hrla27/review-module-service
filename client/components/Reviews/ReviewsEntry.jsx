import React from 'react';
import styled from 'styled-components';
import StarRating from 'react-star-ratings';
import ArrowOutline from '../assets/ArrowOutline.jsx';
import ArrowFilled from '../assets/ArrowFilled.jsx';
import { ReviewsEntryBlockWrapper, RatingSubBlockWrapper, 
        ReviewEntryStarWrapper, RateBarBlockWrapper, 
        BarTitleWrapper, Bar, Ball, BarDescriptionWrapper, 
        Description, ReviewTitleCommentWrapper, TitleWrapper, 
        CommentWrapper, UserInfoSubBlockWrapper, UserInfoWrapper, 
        VoteWrapper, ReviewBodyField, Spacer, FlagList,
        VoteHelpful, VoteList, VoteUp, VoteDown} from '../style/styles.jsx';

const ReviewsEntry = (props) => {
  const {
    title, comment, rate, size, comfort,
    durability, username, location, upvote,
    downvote, response, pre_launch, createdAt,
  } = props.review;

  const dateCreated = new Date(createdAt);
  const dateArr = dateCreated.toString().split(' ');
  const presentDate = `${dateArr[1]} ${dateArr[2]}, ${dateArr[3]}`;
  const flag = 'FLAGGGGGGGGGGG';
  // let flagControl = false;

  // if (flagControl) {
  //   flag = 'This post has been reported';
  // }
  
  return (
    <ReviewsEntryBlockWrapper>
      <RatingSubBlockWrapper>
        <ReviewEntryStarWrapper>
          <StarRating
            rating={rate}
            starRatedColor="black"
            numberOfStars={5}
            starDimension="18px"
            starSpacing="1px"
            name="Rating"
          />
        </ReviewEntryStarWrapper>
        <RateBarBlockWrapper>
          <BarTitleWrapper>
            Size
          </BarTitleWrapper>
          <Bar>
            <Ball ball={(size * 100) + '%'} />
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
            <Ball ball={(comfort * 100) + '%'} />
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
            <Ball ball={(durability * 100) + '%'}/>
          </Bar>
          <BarDescriptionWrapper>
            <div>Not Durable</div>
            <div>Very Durable</div>
          </BarDescriptionWrapper>
        </RateBarBlockWrapper>
      </RatingSubBlockWrapper>
      <ReviewBodyField>
        <ReviewTitleCommentWrapper>
          <TitleWrapper>
            {title}
          </TitleWrapper>
          <CommentWrapper>
            {comment}
            <Spacer />
          </CommentWrapper>
        </ReviewTitleCommentWrapper>
        <UserInfoSubBlockWrapper>
          <UserInfoWrapper>
            {presentDate + ' - ' + username + ' - ' + location}
          </UserInfoWrapper>
          <VoteWrapper>
            <VoteList>
              <VoteHelpful>
                <VoteUp>
                  <ArrowOutline /> 
                </VoteUp>
                <span>{upvote}</span>
                <VoteDown>
                  <ArrowOutline /> 
                </VoteDown>
                <span>{downvote}</span>
              </VoteHelpful>
            </VoteList>
            <FlagList>
              {flag}
            </FlagList>
          </VoteWrapper>
        </UserInfoSubBlockWrapper>
      </ReviewBodyField>
    </ReviewsEntryBlockWrapper>
  )
}

export default ReviewsEntry;
