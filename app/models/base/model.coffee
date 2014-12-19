Chaplin = require 'chaplin'
UUID = require 'uuid'

module.exports = class Model extends Chaplin.Model
  initialize: (attr) ->
    super
    unless attr.id
      @set('id', UUID.v4())
