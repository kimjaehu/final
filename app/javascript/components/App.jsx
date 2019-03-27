import React from 'react'
import NavBar from './NavBar.jsx'
import Main from './Main.jsx'
import Login from './Login.jsx'
import Register from './Register.jsx'

function App (props) {
    return (
      <div>
        <NavBar />
        <Main />
        <Login />
        <Register />
      </div>
    )
}

export default App