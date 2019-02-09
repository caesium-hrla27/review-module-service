import React from 'react';

const PreviewEntry = (props) => {
    return (
      <div key={props.preview.key}>
        {props.preview.title} 
        <br/>
        {props.preview.comment} 
        <br/>
      </div>
    )
}

export default PreviewEntry;