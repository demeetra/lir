import React from "react"
import PropTypes from "prop-types"
class AButtonActuality extends React.Component {

  render () {
    return (
      <form className="button_to" method="post" action={this.props.action}>
        <input className="secondary_button" type="submit" value={this.props.value} />
        <input type="hidden" name="_method" value={this.props.method} autoComplete="off" />
      </form>
    );
  }
}

export default AButtonActuality
