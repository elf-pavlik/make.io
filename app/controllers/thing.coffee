Controller    = require './base/controller'
Collection    = require '../models/base/collection'
Thing         = require '../models/thing'
FooterView    = require '../views/footer'
HeaderView    = require '../views/header'
ThingView  = require '../views/thing/show'
ThingsList  = require '../views/thing/index'
data = require '../../data.json'
_ = require 'underscore'

module.exports = class ThingController extends Controller

  beforeAction: ->
    super

    @reuse 'header', HeaderView, region: 'header'
    @reuse 'footer', FooterView, region: 'footer'

  index: ->
    things = data['@graph'].filter (obj) -> obj.type == 'Thing'
    @things = new Collection things, model: Thing
    @view = new ThingsList collection: @things, region: 'main'

    @

  show: (params) ->
    @thing = new Thing _.find(data['@graph'],(obj) -> obj.id == params.id)
    @view = new ThingView model: @thing, region: 'main'
    @thing.initCollections()
    @view.subview 'inputOf',  new ThingsList collection: @thing.inputOf, region: 'right'
    @view.subview 'outputOf',  new ThingsList collection: @thing.outputOf, region: 'left'

    @
