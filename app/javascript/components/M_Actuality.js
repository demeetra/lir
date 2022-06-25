import React from "react"
import PropTypes from "prop-types"
import A_Button_Actuality from "./A_Button_Actuality"

class MActuality extends React.Component {
  render () {
    if (!this.props.user_signed_in)
      return null;
    return (<>
      <h3 class="actuality">Актуально:</h3>
      <A_Button_Actuality value={this.props.pre_like_value} method={this.props.pre_like_method} action={this.props.pre_like_action} />
      <p class="actuality"> {this.props.pre_like_count} {this.props.pre_like_amount} </p>
      <A_Button_Actuality value={this.props.pre_unlike_value} method={this.props.pre_unlike_method} action={this.props.pre_unlike_action} />
      <p class="actuality"> {this.props.pre_unlike_count} {this.props.pre_unlike_amount} </p>
    </>);
  }
}

export default MActuality
