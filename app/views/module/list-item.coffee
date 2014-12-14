View = require '../base/view'

module.exports = class ListItemView extends View
  autoRender: true
  className: 'module'
  tagName: 'li'
  template: require '../../templates/module/list-item'
