View = require '../base/view'
Editor = require '../../lib/editor'
$ = require 'jquery'

module.exports = class ModuleView extends View
  autoRender: true
  className: 'container'
  regions:
    left: '#left'
    right: '#right'
  template: require '../../templates/module/show'
  events:
    'click button#edit': 'edit'
    'click button#save': 'save'
  render: ->
    super
    console.log 'render'
  edit: (e) ->
    console.log 'edit'
    $('button#edit').hide()
    $('button#save').show()
    Editor.edit 'name', 'input'
    Editor.edit 'description', 'textarea'
    Editor.edit 'process', 'textarea'
  save: (e) ->
    console.log 'save'
    $('button#save').hide()
    $('button#edit').show()
    Editor.save 'name'
    Editor.save 'description'
    Editor.save 'process'
  listen:
    'addedToDOM': 'hideSave'
  hideSave: ->
    console.log $('button#save')
    $('button#save').hide()


