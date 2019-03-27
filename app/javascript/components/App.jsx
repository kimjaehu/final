import React from 'react'
import NavBar from './NavBar.jsx'
import Main from './Main.jsx'

class App extends React.Component {
  render () {
    return (
      <div>
        <NavBar />
        <Main />
      </div>
    )
  }
}

export default App