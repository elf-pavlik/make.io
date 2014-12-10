Controller    = require './base/controller'
Collection    = require '../models/base/collection'
Thing         = require '../models/thing'
FooterView    = require '../views/footer'
HeaderView    = require '../views/header'
ThingView  = require '../views/thing/show'
ThingsList  = require '../views/thing/index'

module.exports = class ThingController extends Controller

  beforeAction: ->
    super

    @reuse 'header', HeaderView, region: 'header'
    @reuse 'footer', FooterView, region: 'footer'

  index: ->
    @things = new Collection null, model: Thing
    @things.add [ { name: 'foo' }, { name: 'bar' } ]
    @view = new ThingsList collection: @things, region: 'main'

    @

  show: (params) ->
    console.log params
    @thing = new Thing
      name: params.name
      description: 'blah, blah, blah'
    @view = new ThingView model: @thing, region: 'main'

    @
