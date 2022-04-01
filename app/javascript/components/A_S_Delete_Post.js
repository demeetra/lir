import React from "react"
import PropTypes from "prop-types"
class ASDeletePost extends React.Component {
  render () {
    return (
        <button className="secondary_button" onClick={event =>  window.location.href=this.props.href}><h3>Удалить</h3></button>
    );
  }
}

export default ASDeletePost
