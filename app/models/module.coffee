Model = require './base/model'
Collection = require './base/collection'
data = require '../../data.json'
_ = require 'underscore'

module.exports = class Module extends Model

  initialize: (attr) ->
    @initCollections = () =>
      @input = new Collection _.map(attr.input, (id) ->
        _.find data['@graph'], (obj) -> obj.id == id )
      @output = new Collection _.map(attr.output, (id) ->
        _.find data['@graph'], (obj) -> obj.id == id )

