import React from 'react';
import axios from 'axios';

class Reviews extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      product_id: '',
      previews: []
    }

    this.fetchPreviews = this.fetchPreviews.bind(this);
  }

  componentDidMount() {
    this.fetchPreviews();
  }

  fetchPreviews() {
    axios
      .get('/side-bar/review/preview', { params: {
        product_id: this.state.product_id
      }})
  }

  render() {
    return (
      <div>
        Reivews
      </div>
    )
  }
}

export default Reviews;