import React from "react"
import PropTypes from "prop-types"
class AButtonFooter extends React.Component {
  render () {
    return (
      <div>
    
        <input className="secondary_button"
          type="submit"
          name="commit"
          value="Отправить"
          data-disable-with="Отправить"

        />
      </div>
    );
  }
}

export default AButtonFooter
