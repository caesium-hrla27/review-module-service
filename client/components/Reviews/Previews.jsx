import React from 'react';
import PreviewEntry from './PreviewEntry.jsx';
import PopUpWindow from './PopUpWindow.jsx';

class Previews extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      moreReviewsToggle: false,
    };

    this.handleMoreReviewsToggle = this.handleMoreReviewsToggle.bind(this);
  }

  handleMoreReviewsToggle(e) {
    e.preventDefault();
    this.setState({
      moreReviewsToggle: !this.state.moreReviewsToggle,
    });
  }

  render() {
    let moreReviews;
    const { moreReviewsToggle } = this.state;
    const { previews } = this.props;

    if (moreReviewsToggle) {
      moreReviews = <PopUpWindow exit={this.handleMoreReviewsToggle} />;
    }
    return (
      <div className="previews">
        {previews.map((preview, index) => (
          <div className="preview">
            <PreviewEntry preview={preview} key={index} />
          </div>
        ))}
        <br />
        <button
          className="moreReviews"
          onClick={this.handleMoreReviewsToggle}
        >
        More Reviews
        </button>
        {moreReviews}
      </div>
    );
  }
}

export default Previews;
