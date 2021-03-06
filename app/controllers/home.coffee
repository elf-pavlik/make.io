Controller    = require './base/controller'
FooterView    = require '../views/footer'
HeaderView    = require '../views/header'
HomePageView  = require '../views/home/home-page'

module.exports = class HomeController extends Controller

  beforeAction: ->
    super

    @reuse 'header', HeaderView, region: 'header'
    @reuse 'footer', FooterView, region: 'footer'

  index: ->
    @view = new HomePageView region: 'main'

    @
