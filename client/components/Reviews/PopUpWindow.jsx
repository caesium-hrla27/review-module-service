import React from 'react';
import axios from 'axios';
import styled from 'styled-components';

const PopUpWrapper = styled.div`
  display: block;
  margin: 0;
  padding: 0;
  border: 0;
  opacity: 1;
`
class PopUpWindow extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      initialReviews: [],
      moreReviews: [],
    };
  }

  fetchInitialReviews() {
    axios
      .get('/side-bar/review/fullview')
      .then((data) => {
        this.setState({
          initialReviews: data.data,
        });
        console.log(data.data);
      })
      .catch((err) => {
        console.error(err);
      });
  }

  render() {
    return (
      <PopUpWrapper>
        Heeeeeeeeellllllllloooooooooo!
      </PopUpWrapper>
    );
  }
}

export default PopUpWindow;
