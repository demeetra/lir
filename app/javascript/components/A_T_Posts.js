import React from "react"
import PropTypes from "prop-types"
class ATPosts extends React.Component {
  render () {
    return (
      <button className="top_menu_button" onClick={event =>  window.location.href=this.props.href}><h2>Форум</h2></button>
    );
  }
}

export default ATPosts
