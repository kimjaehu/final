import React from 'react'
import AppBar from '@material-ui/core/AppBar';
import Icon from '@material-ui/core/Icon';

class NavBar extends React.Component {
  render () {
    return (
      <AppBar color="primary" position="static">
        <span><Icon>work_outline</Icon></span>
        <span><Icon>account_box</Icon></span>
      </AppBar>
    )
  }
}

export default NavBar