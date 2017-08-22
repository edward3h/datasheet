import {roles, weaponTypes} from './enums.coffee'

initialModel =
  name: "New model"
  m: 5
  ws: 4
  bs: 4
  s: 3
  t: 3
  w: 1
  a: 1
  ld: 6
  sv: 5
  
initialWeapon =
  name: "New weapon"
  range: 12
  type: weaponTypes[1]
  s: 3
  ap: 0
  d: 1
  abilities: false
    
initialState =
  name: "New unit"
  role: roles[1]
  power: 0
  composition: "This unit contains 1 New model."
  models: [
    initialModel
  ]
  options: []
  weapons: [
    initialWeapon
  ]
  psyker: false
  faction: "IMPERIUM"
  keywords: "INFANTRY"