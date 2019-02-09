import React from 'react';
import PreviewEntry from './PreviewEntry.jsx';

class Previews extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      moreReviewsToggle = false
    }
  }

  render() {
    return (
      <div className="previews">
        {props.previews.map((preview, index) => {
          return (
            <div className="preview">
              <PreviewEntry preview={preview} key={index}/>
            </div>
          )
        })}
        <br/>
        <button className='moreReviews'>More Reviews</button>
      </div>
    )
  }
}

export default Previews;