import React from 'react';
import styled, { css } from 'styled-components';
import StarRatings from 'react-star-ratings';

const PreviewEntryWrapper = styled.div`
  display: block;
  margin-bottom: 40px;
`
const RateWrapper = styled.div`
  display: flex;
  justify-content: row;
`
const UserNameWrapper = styled.div`
  padding-left: 16px;
`
const Title = styled.div`
  font-weight: 700;
  padding-bottom: 8px;
`;
const UserName = styled.div`
  color: grey;
  font-size: small;
  position: relative
`;
const Spacer = styled.p`
  padding-bottom: 8px;
  margin: 0;
`

class PreviewEntry extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      rating: 0,
    };
  }

  render() {
    const {
      title, comment, rate, size, comfort,
      durability, username, location, upvote,
      downvote, response, pre_launch, createdAt,
    } = this.props.preview;

    const dateCreated = new Date(createdAt);
    const dateArr = dateCreated.toString().split(' ');
    const presentDate = `${dateArr[1]} ${dateArr[2]}, ${dateArr[3]}`;


    return (
      <PreviewEntryWrapper>
        <Title>
          {title}
        </Title>
        <RateWrapper>
          <StarRatings
            rating={rate}
            starRatedColor="black"
            numberOfStars={5}
            starDimension="16px"
            starSpacing="3px"
            name="rating"
          />
          <UserNameWrapper>
            <UserName>{username}{' '}-{' '}{presentDate}</UserName>
          </UserNameWrapper>
        </RateWrapper>
        <Spacer />
        {comment}
      </PreviewEntryWrapper>

    );
  }
}

export default PreviewEntry;
