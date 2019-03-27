import React from 'react';
import PropTypes from 'prop-types';
import { withStyles } from '@material-ui/core/styles';
import Input from '@material-ui/core/Input';

const styles = theme => ({
  container: {
    display: 'flex',
    flexWrap: 'wrap',
  },
  input: {
    margin: theme.spacing.unit,
  },
});

function Login(props) {
  const { classes } = props;
  return (
    <div className={classes.container}>
      <Input
        placeholder="@email"
        className={classes.input}
        inputProps={{
          'aria-label': 'Description',
        }}
      />

      <Input
        placeholder="Password"
        className={classes.input}
        inputProps={{
          'aria-label': 'Description',
        }}
      />
    </div>
  );
}

Login.propTypes = {
  classes: PropTypes.object.isRequired,
};

export default withStyles(styles)(Login);