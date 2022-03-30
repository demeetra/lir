import React from "react"
import PropTypes from "prop-types"
class APPublicate extends React.Component {
  render () {
    return (
      <button className="primary_button" onClick={event =>  window.location.href=this.props.href}>Опубликовать</button>
    );
  }
}

export default APPublicate
