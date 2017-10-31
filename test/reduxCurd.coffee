import 'shelljs/make'
import dd from 'ddeyes'

# import { crudActionsTypes } from '../src'
import { crudActionsTypes } from '../dist/bundle'

target.all = ->

  dd crudActionsTypes 'todo'
