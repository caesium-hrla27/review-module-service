import React from 'react';
import axios from 'axios';

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
      <div>
        Hello!
      </div>
    );
  }
}

export default PopUpWindow;
