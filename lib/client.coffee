import App from './app.coffee'
import {createElement} from 'react'
import {render} from 'react-dom'

render(
  createElement(App, {}, null),
  document.getElementById('root')
)
