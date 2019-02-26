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
        VoteWrapper, ReviewBodyField, Spacer, FlagList, FlagImg,
        VoteHelpful, VoteList, VoteUp, VoteDown, VoteCount,
        FlagReported, FillVoteUp, FillVoteDown} 
from '../style/styles.jsx';

class ReviewsEntry extends React.Component {
  constructor (props) {
    super(props);
    this.state = {
      flagUp: false,
      hoverVoteUp: 'https://s3-us-west-1.amazonaws.com/cs-nike-fec/EmptyArrow.jpeg',
      hoverVoteDown: 'https://s3-us-west-1.amazonaws.com/cs-nike-fec/EmptyArrow.jpeg',
    }

    this.report = this.report.bind(this);
    this.fillArrowUp = this.fillArrowUp.bind(this);
    this.fillArrowDown = this.fillArrowDown.bind(this);
    this.emptyArrowDown = this.emptyArrowDown.bind(this);
    this.emptyArrowUp = this.emptyArrowUp.bind(this);
  }

  componentDidUpdate() {

  }

  report() {
    this.setState({
      flagUp: true,
    });
  }

  fillArrowUp() {
    this.setState({
      hoverVoteUp: 'https://s3-us-west-1.amazonaws.com/cs-nike-fec/FilledArrow.jpeg',
    })
  }

  fillArrowDown() {
    this.setState({
      hoverVoteDown: 'https://s3-us-west-1.amazonaws.com/cs-nike-fec/FilledArrow.jpeg',
    })
  }

  emptyArrowDown() {
    this.setState({
      hoverVoteUp: 'https://s3-us-west-1.amazonaws.com/cs-nike-fec/EmptyArrow.jpeg',
    })
  }

  emptyArrowUp() {
    this.setState({
      hoverVoteDown: 'https://s3-us-west-1.amazonaws.com/cs-nike-fec/EmptyArrow.jpeg',
    })
  }

  render() {
    const {
      title, comment, rate, size, comfort,
      durability, username, location, upvote,
      downvote, response, pre_launch, createdAt,
    } = this.props.review;

    const dateCreated = new Date(createdAt);
    const dateArr = dateCreated.toString().split(' ');
    const presentDate = `${dateArr[1]} ${dateArr[2]}, ${dateArr[3]}`;
    let flag;

    if (this.state.flagUp) {
      flag = 'This post has been reported';
    }
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
                  <VoteUp >
                  <FillVoteUp />
                  </VoteUp>
                  <VoteCount>{upvote}</VoteCount>
                  <VoteDown>
                    <FillVoteDown />
                  </VoteDown>
                  <VoteCount>{downvote}</VoteCount>
                </VoteHelpful>
              </VoteList>
              <FlagList>
                <FlagImg src={'https://s3-us-west-1.amazonaws.com/cs-nike-fec/Flag.png'} alt={'Flag!'} onClick={this.report} flagUp={this.state.flagUp} />
                <FlagReported>
                {flag}
                </FlagReported>
              </FlagList>
            </VoteWrapper>
          </UserInfoSubBlockWrapper>
        </ReviewBodyField>
      </ReviewsEntryBlockWrapper>
    )
  }
}

export default ReviewsEntry;
