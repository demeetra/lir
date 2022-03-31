import React from "react"
import PropTypes from "prop-types"
import A_Button_Footer from "./A_Button_Footer"

class MSubscribeFooter extends React.Component {
  render () {
    return (
      <div className="subscriber_footer">
        <h2>Подписаться на новости:</h2>
        <input className="input_footer"
          type="email"
          placeholder="example@mail.ru"
          name="subscriber[email]"
          id="subscriber_email"
        />
        <A_Button_Footer />
      </div>

    );
  }
}

export default MSubscribeFooter
