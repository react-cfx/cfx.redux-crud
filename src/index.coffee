import { toActionsTypes } from 'cfx.redux-types'

crudActionsTypes = (routeName) ->
  routeName = routeName.toUpperCase()
  toActionsTypes [
    'FETCH'
    'CREATE'
    'UPDATE'
    'DELETE'
  ].reduce (r, c) ->
    {
      r...
      {
        "#{routeName}_#{c}"
        "#{routeName}_#{c}_START"
        "#{routeName}_#{c}_SUCCESS"
        "#{routeName}_#{c}_ERROR"
      }...
    }
  , {}

export {
  crudActionsTypes
}
