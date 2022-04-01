import React from "react"
import PropTypes from "prop-types"
class ATRegistration extends React.Component {
  render () {
    return (
      <button className="thirdly_button" onClick={event =>  window.location.href=this.props.href}><h3>Регистрация</h3></button>
    );
  }
}

export default ATRegistration
