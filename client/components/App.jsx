import React from 'react';

class App extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      hello: true
    }
  }

  render() {
    return (
      <div>
        <h1>Welcome to review module</h1>
      </div>
    )
  }
}

export default App;