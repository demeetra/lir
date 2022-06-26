import React from "react"
import PropTypes from "prop-types"
class ATPorts extends React.Component {
  render () {
    return (
      <button className="top_menu_button" onClick={event =>  window.location.href=this.props.href}><h2>Карта</h2></button>
    );
  }
}

export default ATPorts
