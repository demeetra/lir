import React from "react"
import PropTypes from "prop-types"
class ASDeletePost extends React.Component {
  render () {
    return (
        <form className="button_to" method="post" action={this.props.href}>
          <input className="secondary_button" type="submit" value={this.props.value} data-confirm={this.props.confirm} />
          <input type="hidden" name="_method" value={this.props.method} autoComplete="off" />
        </form>
    );
  }
}

export default ASDeletePost
