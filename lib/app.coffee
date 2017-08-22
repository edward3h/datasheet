import {Component, DOM, createElement as e} from 'react'
import {roles, weaponTypes} from './enums.coffee'
import {NumberField} from './numberfield.coffee'
import {div, ul, li, span} from 'react-dom-factories'

class App extends Component
  constructor: (props) ->
    super(props)
    @state =
      role: roles[0]
      save: 5
    
  render: => 
    div 
      className: "app"
      div
        className: "saveNumber"
        span
          className: "label"
          "Choose a Save"
        e NumberField
          count: @state.save
          min: 2
          max: 7
          transform: (v) -> "#{v}+"
          onNumberChange: (number) =>
            @setState save: number
    
export default App