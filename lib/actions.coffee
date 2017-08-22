setValue = (value, key...) ->
  type: 'SET_VALUE'
  key
  value
  
addToList = (key) ->
  type: 'ADD'
  key
  
removeFromList = (key, index) ->
  type: 'REMOVE'
  key
  index
  
export {
  setValue
  addToList
  removeFromList
}