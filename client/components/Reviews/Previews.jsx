import React from 'react';
import styled from 'styled-components';
import PreviewEntry from './PreviewEntry.jsx';
import PopUpWindow from './PopUpWindow.jsx';
import Popup from 'react-skylight';

const PreviewWrapper = styled.div`
  align-items: flex-start;
  text-align: left;
  padding-left: 5px;
`

const MoreReviews = styled.button`
  outline: none;
  border: none;
  cursor: pointer;
  padding-bottom: 4px;
  border-bottom: 1px solid black;
  border-radius: unset;
  font-size: 14px;
  text-align: center;
`
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
    const myPopUp = {
      width: '100%',
      height: '100%',
      marginTop: '-300px',
      marginLeft: '-35%',
    }
    return (
      <PreviewWrapper>
        {previews.map((preview, index) => (
          <div className="preview">
            <PreviewEntry preview={preview} key={index} />
          </div>
        ))}
        <br />
        <MoreReviews onClick={() => this.customDialog.show()}>More Reviews</MoreReviews>
        <Popup dialogStyles={myPopUp}
          hideOnOverlayClicked 
          ref={ref => this.customDialog = ref} 
          title="Pop Up Window"
        >
          <PopUpWindow exit={this.handleMoreReviewsToggle} />
        </Popup>
      </PreviewWrapper>
    );
  }
}

export default Previews;
