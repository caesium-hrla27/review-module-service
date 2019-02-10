import React from 'react';
import styled, { css } from 'styled-components';
import StarRatings from 'react-star-ratings';

const Title = styled.div`
  font-weight: bold;
`;
const UserName = styled.div`
  color: grey;
  font-size: small;
  position: relative
`;

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
      <div>
        <Title>
          {title}
        </Title>
        <StarRatings
          rating={rate}
          starRatedColor="black"
          numberOfStars={5}
          starDimension="16px"
          starSpacing="3px"
          name="rating"
        />
        <UserName>{username}{' '}-{' '}{presentDate}</UserName>
        {comment}
        <br />
      </div>

    );
  }
}

export default PreviewEntry;
