Controller    = require './base/controller'
Collection    = require '../models/base/collection'
Module         = require '../models/module'
FooterView    = require '../views/footer'
HeaderView    = require '../views/header'
ModuleView  = require '../views/module/show'
ModulesList  = require '../views/module/index'
ThingsList  = require '../views/thing/index'
data = require '../../data.json'
_ = require 'underscore'

module.exports = class ModuleController extends Controller


  beforeAction: ->
    super

    @reuse 'header', HeaderView, region: 'header'
    @reuse 'footer', FooterView, region: 'footer'

  index: ->
    things = data['@graph'].filter (obj) -> obj.type == 'Module'
    @things = new Collection things, model: Module
    @view = new ModulesList collection: @things, region: 'main'

    @

  show: (params) ->
    @thing = new Module _.find(data['@graph'],(obj) -> obj.id == params.id)
    @view = new ModuleView model: @thing, region: 'main'
    @thing.initCollections()
    @view.subview 'input',  new ThingsList collection: @thing.input, region: 'left'
    @view.subview 'output',  new ThingsList collection: @thing.output, region: 'right'

    @
