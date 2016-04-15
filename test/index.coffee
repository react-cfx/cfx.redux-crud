#!/usr/bin/env coffee
{
  log
  error
} = console
echo = log
require 'shelljs/make'
dd = require 'ddeyes'

{
  crudActionsTypes
} = require '../index'

target.all = ->

  dd crudActionsTypes 'todo'
