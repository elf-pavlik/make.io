Model = require './base/model'
Collection = require './base/collection'
data = require '../../data.json'
_ = require 'underscore'

module.exports = class Thing extends Model

  initialize: (attr) ->
    @initCollections = () =>
      @inputOf = new Collection _.map(attr.inputOf, (id) ->
        _.find data['@graph'], (obj) -> obj['@id'] == id )
      @outputOf = new Collection _.map(attr.outputOf, (id) ->
        _.find data['@graph'], (obj) -> obj['@id'] == id )

