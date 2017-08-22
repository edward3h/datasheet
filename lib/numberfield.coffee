import {Component, DOM, createElement as e} from 'react'

{div, span} = DOM
      
class NumberField extends Component
  constructor: (props) ->
    super(props)
    @props = props
    
  handleChange: (value) =>
    @props.onNumberChange(value)
    
  decrement: =>
    @handleChange(@props.count - 1) if @enableDec()
    
  increment: =>
    @handleChange(@props.count + 1) if @enableInc()
    
  displayValue: =>
    if @props.transform
      @props.transform(@props.count)
    else
      @props.count
      
  enableDec: =>
    !@props.min or @props.count > @props.min
    
  enableInc: =>
    !@props.max or @props.count < @props.max
    
  render: =>
    div
      className: "numberField"
      span
        className: "dec #{'disabled' if !@enableDec()}"
        onClick: @decrement
        "-"
      span
        className: "value"
        "#{@displayValue()}"
      span
        className: "inc #{'disabled' if !@enableInc()}"
        onClick: @increment
        "+"

export {
  NumberField
}