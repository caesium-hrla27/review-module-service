import React from 'react';
import PreviewEntry from './PreviewEntry.jsx';

class Previews extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      moreReviewsToggle: false
    }

    this.handleMoreReviewsToggle = this.handleMoreReviewsToggle.bind(this);
  }

  handleMoreReviewsToggle(e) {
    e.preventDefault();
    this.setState({
      moreReviewsToggle: !this.state.moreReviewsToggle
    })
    console.log(this.state.moreReviewsToggle);
  }

  render() {
    let moreReviews;

    if (this.state.moreReviewsToggle) {
      moreReviews = <PopUpWindow />;
    }
    return (
      <div className="previews">
        {this.props.previews.map((preview, index) => {
          return (
            <div className="preview">
              <PreviewEntry preview={preview} key={index}/>
            </div>
          )
        })}
        <br/>
        <button className='moreReviews'
        onClick={this.handleMoreReviewsToggle}
        >
        More Reviews
        </button>
        {moreReviews}
      </div>
    )
  }
}

export default Previews;