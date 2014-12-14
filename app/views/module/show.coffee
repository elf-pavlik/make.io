View = require '../base/view'

module.exports = class ModuleView extends View
  autoRender: true
  className: 'container'
  regions:
    left: '#left'
    right: '#right'
  template: require '../../templates/module/show'
