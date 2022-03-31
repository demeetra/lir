import React from "react"
import PropTypes from "prop-types"
class AButtonActuality extends React.Component {
  render () {
    return (
      <form className="button_to" method="post" action={this.props.action}>
      <input type="submit" value={this.props.value} />
      <input type="hidden" name="_method" value={this.props.method} autoComplete="off" />
      <input type="hidden" name="authenticity_token" value={this.props.authenticity_token} autoComplete="off" />
      </form>
    );
  }
}

export default AButtonActuality
