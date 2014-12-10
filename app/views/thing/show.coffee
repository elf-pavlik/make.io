View = require '../base/view'

module.exports = class ThingView extends View
  autoRender: true
  className: 'container'
  template: require '../../templates/thing/show'
