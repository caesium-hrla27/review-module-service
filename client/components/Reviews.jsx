import React from 'react';
import axios from 'axios';
import styled from 'styled-components';
import Previews from './Reviews/Previews.jsx';

const ExpandReview = styled.div`
  transition: 250ms height ease-in;
  height: ${props => props.toggle ? 'auto' : '0'}
  width: 369px;
`

class Reviews extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      productId: 'M1',
      previews: [],
    };
  }

  componentDidMount() {
    this.fetchPreviews();
  }

  fetchPreviews() {
    axios
      .get('/side-bar/review/preview', {
        params: {
          productId: this.state.productId,
        },
      })
      .then((response) => {
        this.setState({
          previews: response.data,
        });
      })
      .catch((err) => {
        console.error(err);
      });
  }

  render() {
    return (
      <ExpandReview toggle={this.props.reviewsToggle}>
        <Previews previews={this.state.previews} /> 
      </ExpandReview>
    );
  }
}

export default Reviews;
