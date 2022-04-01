import React from "react"
import PropTypes from "prop-types"
class ATLogIn extends React.Component {
  render () {
    return (
      <button className="top_menu_button" onClick={event =>  window.location.href=this.props.href}><h2>Личный кабинет</h2></button>
    );
  }
}

export default ATLogIn
