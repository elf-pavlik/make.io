View = require '../base/view'

module.exports = class ThingView extends View
  autoRender: true
  className: 'container'
  regions:
    left: '#left'
    right: '#right'
  template: require '../../templates/thing/show'
