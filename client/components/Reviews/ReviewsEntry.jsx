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
        FlagReported} from '../style/styles.jsx';

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

  report(e) {
    e.preventDefault();
    this.setState({
      flagUp: true,
    });
  }

  fillArrowUp(e) {
    e.preventDefault();
    this.setState({
      hoverVoteUp: 'https://s3-us-west-1.amazonaws.com/cs-nike-fec/FilledArrow.jpeg',
    })
  }

  fillArrowDown(e) {
    e.preventDefault();
    this.setState({
      hoverVoteDown: 'https://s3-us-west-1.amazonaws.com/cs-nike-fec/FilledArrow.jpeg',
    })
    console.log('hey')
  }

  emptyArrowDown(e) {
    e.preventDefault();
    this.setState({
      hoverVoteUp: 'https://s3-us-west-1.amazonaws.com/cs-nike-fec/EmptyArrow.jpeg',
    })
  }

  emptyArrowUp(e) {
    e.preventDefault();
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
                  <VoteUp src={this.state.hoverVoteUp} alt={'Up Vote Arrow'} onMouseEnter={this.fillArrowUp} onMouseLeave={this.emptyArrowUp} />
                  <VoteCount>{upvote}</VoteCount>
                  <VoteDown src={this.state.hoverVoteDown} alt={'Down Vote Arrow'} onMouseEnter={this.fillArrowDown} onMouseLeave={this.emptyArrowDown} />
                  <VoteCount>{downvote}</VoteCount>
                  {flag}
                </VoteHelpful>
              </VoteList>
              <FlagList>
                <FlagImg src={'https://s3-us-west-1.amazonaws.com/cs-nike-fec/Flag.png'} alt={'Flag!'} onClick={this.report} flagUp={this.state.flagUp} />
              </FlagList>
            </VoteWrapper>
          </UserInfoSubBlockWrapper>
        </ReviewBodyField>
      </ReviewsEntryBlockWrapper>
    )
  }
}

export default ReviewsEntry;
