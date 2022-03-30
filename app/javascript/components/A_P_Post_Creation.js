import React from "react"
import PropTypes from "prop-types"
class APPostCreation extends React.Component {
  render () {
    return (
      <button className="primary_button" onClick={event =>  window.location.href=this.props.href}>Создать пост +</button>
    );
  }
}

export default APPostCreation
