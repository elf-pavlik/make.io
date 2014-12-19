Model = require './base/model'
Collection = require './base/collection'
data = require '../../data.json'
_ = require 'underscore'

module.exports = class Module extends Model

  initCollections: () =>
    @input = new Collection _.map(@attributes.input, (id) ->
      _.find data['@graph'], (obj) -> obj.id == id )
    @output = new Collection _.map(@attributes.output, (id) ->
      _.find data['@graph'], (obj) -> obj.id == id )

