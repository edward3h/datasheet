import {Component} from 'react'
import {select, option} from 'react-dom-factories'

class SelectField extends Component
  constructor: (props) ->
    super(props)
    
  handleChange: (event) =>
    @props.onValueChange(event.target.value)

  render: ->
    select
      className: "selectField"
      value: @props.selected
      onChange: @handleChange
      for v in @props.list
        option
          value: v
          "#{v}"
    
export {
  SelectField
}