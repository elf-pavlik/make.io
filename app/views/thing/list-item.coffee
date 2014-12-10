View = require '../base/view'

module.exports = class ListItemView extends View
  autoRender: true
  className: 'thing'
  tagName: 'li'
  template: require '../../templates/thing/list-item'
