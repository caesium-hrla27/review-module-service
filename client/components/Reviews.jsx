import React from 'react';
import axios from 'axios';
import Previews from './Reviews/Previews.jsx';

class Reviews extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      productId: 'M1',
      previews: [],
    };

    this.fetchPreviews = this.fetchPreviews.bind(this);
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
        console.log(response);
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
      <div>
        <Previews previews={this.state.previews} /> 
      </div>
    );
  }
}

export default Reviews;
