import React from "react"
import PropTypes from "prop-types"
class ASEditPost extends React.Component {
  render () {
    return (
      <button className="secondary_button" onClick={event =>  window.location.href=this.props.href}><h3>Редактировать</h3></button>
    );
  }
}

export default ASEditPost
