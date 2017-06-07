import { toActionsTypes } from 'cfx.redux-types'

crudActionsTypes = (routeName) ->
  routeName = routeName.toUpperCase()
  r = {}
  for kw in [
    'FETCH'
    'CREATE'
    'UPDATE'
    'DELETE'
  ]
    Object.assign r, {
      "#{routeName}_#{kw}"
      "#{routeName}_#{kw}_START"
      "#{routeName}_#{kw}_SUCCESS"
      "#{routeName}_#{kw}_ERROR"
    }
  toActionsTypes r

export default {
  crudActionsTypes
}
