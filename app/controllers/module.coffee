Controller    = require './base/controller'
FooterView    = require '../views/footer'
HeaderView    = require '../views/header'
ThingView  = require '../views/thing/show'
ThingsList  = require '../views/thing/index'

module.exports = class ModuleController extends Controller

  beforeAction: ->
    super

    @reuse 'header', HeaderView, region: 'header'
    @reuse 'footer', FooterView, region: 'footer'

  index: ->
    @view = new ThingsList region: 'main'

    @

  show: ->
    @view = new ThingView region: 'main'

    @
